import { readFileSync, writeFileSync } from "fs";
import {
  FunctionObj,
  breakUpLargeSegments,
  createContract,
  createFunctionObj,
  createNestingFunctions,
  // getAllColorArgs,
} from "./helperFunctions";

const CONTRACT_SIZE_LIMIT = 13000; // TODO: Examine actual contract size vs this number
const SVG_CHUNK_SIZE_LIMIT = 800;
const STACK_LIMIT = 8; // No more than this many variables in a function

// TODO: Add layer logic here
// Load and parse the SVG file
let svgData = readFileSync("assets/huge.svg", "utf-8");
// remove newline characters
svgData = svgData.replace(/\n/g, "");
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
const splitRegex = /#SPLIT#colors\[(\d+)\]/;
let segments = svgData.split(splitRegex);

// Split segments that are too large
segments = breakUpLargeSegments(segments, SVG_CHUNK_SIZE_LIMIT);
// Add single quotes to the end and beginning of all non-variable lines
segments = segments.map(segment => {
  // Wrap all non-variable lines in single quotes
  if (!segment.match(/colors\[(\d+)\]/)) {
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
  if (segment?.match(/colors\[(\d+)\]/)) {
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
  tempAllFunctions =
    tempContractMemory.length > 1
      ? createNestingFunctions([...tempContractMemory], STACK_LIMIT)
      : [...tempContractMemory];
  if (
    Buffer.from(JSON.stringify(tempAllFunctions.map((f: FunctionObj) => f.fnString))).length >= CONTRACT_SIZE_LIMIT ||
    functions.length == 0
  ) {
    contracts.push(createContract(tempAllFunctions, contracts.length));
    tempContractMemory = [];
    tempAllFunctions = [];
  }
}

const deploymentFile: string[] = [];
deploymentFile.push(
  `import { HardhatRuntimeEnvironment } from "hardhat/types";\nimport { DeployFunction } from "hardhat-deploy/types";\n\n
  const deployAssets: DeployFunction = async function (hre: HardhatRuntimeEnvironment) {
    const { deployer } = await hre.getNamedAccounts();
    const { deploy } = hre.deployments;\n`,
);
const tags = [];
for (let i = 0; i < contracts.length; i++) {
  writeFileSync(`contracts/Asset${i}.sol`, contracts[i]);

  deploymentFile.push(`
    await deploy("Asset${i}", {
      from: deployer,
      log: true,
      autoMine: true,
    });\n`);
  tags.push(`Asset${i}`);
}
deploymentFile.push(`\n};\nexport default deployAssets;\n
deployAssets.tags = ["${tags.join(`","`)}"];`);
// TODO: Make this push to specific deployment file based on layer and asset
writeFileSync(`deploy/00_Asset.ts`, deploymentFile.join(""));
// TODO: Write to file for all know properties of these contracts (colors, later deployment addresses)
