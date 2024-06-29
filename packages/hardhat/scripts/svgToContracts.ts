import { readFileSync, writeFileSync, readdirSync } from "fs";
import prettier from "prettier";
import path from "path";
import {
  FunctionObj,
  breakUpLargeSegments,
  createContract,
  createFunctionObj,
  createNestingFunctions,
} from "./helperFunctions";
import { optimize } from "svgo";

const CONTRACT_SIZE_LIMIT = 13000; // TODO: Examine actual contract size vs this number
const SVG_CHUNK_SIZE_LIMIT = 800;
const STACK_LIMIT = 8; // No more than this many variables in a function
const writeConfig: { [key: string]: any } = {};

// SVG tag constants
const START_TAG_REGEX = /<svg[^>]*>/;
let START_TAG = "";
const END_TAG = "</svg>";

// Get assets from directories
const layers = readdirSync("layers");
for (const layer of layers) {
  const segments = readdirSync(path.join("layers", layer));
  for (const segment of segments) {
    console.log(layer, segment);
    const pathToAsset = path.join("layers", layer, segment);
    const traits = readdirSync(pathToAsset);
    for (const trait of traits) {
      console.log(trait);
      const name = `Asset_${layer}_${segment}_${trait.replace(".svg", "")}`;
      const pathToFile = path.join("layers", layer, segment, trait);
      let svgData = readFileSync(pathToFile, "utf-8");
      // optimize svg
      svgData = optimize(svgData, { multipass: true }).data;
      // remove newline characters
      svgData = svgData.replace(/\n/g, "");
      // Get starting tag and make sure it is the same as all others
      const startingTagArray = svgData.match(START_TAG_REGEX);
      const startingTag = startingTagArray ? startingTagArray[0] : null;
      if (!startingTag) {
        throw new Error("Malformed SVG file. No starting tag was found.");
      }
      if (START_TAG && START_TAG != startingTag) {
        throw new Error(`Starting tag doesn't match in every file. 1: "${START_TAG}"\n2: "${startingTag}" `);
      }
      // Should only ever assign this to something different on the first run when START_TAG is an empty string
      START_TAG = startingTag;
      // Strip start and end tags from svgData
      svgData = svgData.replace(START_TAG, "");
      svgData = svgData.replace(END_TAG, "");
      // Assume that all colors are in the format #RRGGBB or rgb(r, g, b)
      const colorRegex = /#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})|rgb\(\d{1,3},\s*\d{1,3},\s*\d{1,3}\)/g;
      const excludedColors = ["#000", "#fff", "#000000", "#ffffff"];

      let matches: string[] = svgData.match(colorRegex) as string[];
      // Filter out any colors we want to exclude
      matches = matches.filter(c => !excludedColors.includes(c));
      // Filter out duplicate colors
      const uniqueColors = [...new Set<string>(matches)];
      // Replace every occurance of a color with a generic variable - color0, color1...
      for (let i = 0; i < uniqueColors.length; i++) {
        svgData = svgData.replaceAll(uniqueColors[i], `#SPLIT#colors[${i}]`);
      }
      // split at each occurance of #SPLIT#
      const splitRegex = /#SPLIT#(colors\[\d+\])/;
      let segments = svgData.split(splitRegex);

      // Split segments that are too large
      segments = breakUpLargeSegments(segments, SVG_CHUNK_SIZE_LIMIT);
      // Add single quotes to the end and beginning of all non-variable lines
      segments = segments.map(segment => {
        // Wrap all non-variable lines in single quotes
        if (!segment.match(/colors\[\d+\]/)) {
          return `'${segment}'`;
        }
        return segment;
      });

      let tempFunctionMemory = [];
      const functions = [];
      // Create the required amount of functions
      while (segments.length) {
        let segment = segments.shift();
        // If segment is a color variable, add the call to toColor
        if (segment?.match(/colors\[\d+\]/)) {
          segment = `${segment}.toColor()`;
        }
        tempFunctionMemory.push(segment);

        if (tempFunctionMemory.length == STACK_LIMIT || segments.length == 0) {
          functions.push(createFunctionObj(tempFunctionMemory as string[], `renderFn${functions.length}`));
          tempFunctionMemory = [];
        }
      }

      let tempContractMemory: FunctionObj[] = [];
      let tempAllFunctions: FunctionObj[] = [];
      const contracts = [];
      // Create the required amount of contracts
      while (functions.length) {
        tempContractMemory.push(functions.shift() as FunctionObj);
        // Add any necessary helper functions for nesting
        tempAllFunctions = createNestingFunctions([...tempContractMemory], STACK_LIMIT);
        if (
          Buffer.from(JSON.stringify(tempAllFunctions.map((f: FunctionObj) => f.fnString))).length >=
            CONTRACT_SIZE_LIMIT ||
          functions.length == 0
        ) {
          contracts.push(createContract(tempAllFunctions, `${name}_${contracts.length}`));
          tempContractMemory = [];
          tempAllFunctions = [];
        }
      }

      const deploymentFile: string[] = [];
      deploymentFile.push(
        `import { HardhatRuntimeEnvironment } from "hardhat/types";\nimport { DeployFunction } from "hardhat-deploy/types";\n\n
      const ${name}: DeployFunction = async function (hre: HardhatRuntimeEnvironment) {
        const { deployer } = await hre.getNamedAccounts();
        const { deploy } = hre.deployments;\n`,
      );
      const tags = [];
      for (let i = 0; i < contracts.length; i++) {
        const fileName = `${name}_${i}`;
        writeFileSync(`contracts/${fileName}.sol`, contracts[i]);

        deploymentFile.push(`
        await deploy("${fileName}", {
          from: deployer,
          log: true,
          autoMine: true,
        });\n`);
        tags.push(`${fileName}`);
      }
      deploymentFile.push(`\n};\nexport default ${name};\n
    ${name}.tags = ["${tags.join(`","`)}"];`);
      // Push to specific deployment file based on layer and asset
      writeFileSync(
        `deploy/00_${name}.ts`,
        prettier.format(deploymentFile.join(""), {
          parser: "typescript",
        }),
      );
      writeConfig[name] = { contracts: [], colors: uniqueColors };
    }
  }
}
writeFileSync("./project-config.json", prettier.format(JSON.stringify({ START_TAG, END_TAG }), { parser: "json" }));
writeFileSync("./asset-config.json", prettier.format(JSON.stringify(writeConfig), { parser: "json" }));
