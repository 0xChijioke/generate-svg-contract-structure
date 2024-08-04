import { readFileSync, writeFileSync } from "fs";
import hre from "hardhat";
import { ethers } from "hardhat";

async function main() {
  const assetConfig = JSON.parse(readFileSync("./asset-config.json", "utf8"));
  const { all } = hre.deployments;
  const allContracts = await all();
  const layerMasterAddr = allContracts?.["LayerMaster"].address;

  // Call to LM contract to add assets contained in assetConfig
  const LayerMaster = await ethers.getContractFactory("LayerMaster");
  const layerMaster = LayerMaster.attach(layerMasterAddr);
  const assetIndexes = [];
  const assetContracts = [];
  const assetColors = [];
  const detailIndexes = [];
  const detailTypes = [];
  const detailNames = [];
  for (let i = 0; i < Object.keys(assetConfig).length; i++) {
    const assetName = Object.keys(assetConfig)[i];
    const asset = assetConfig[assetName];
    console.log(`Adding asset ${assetName} to LayerMaster...`);
    assetIndexes.push(i);
    assetContracts.push(asset.contracts);
    assetColors.push(
      asset.colors.map((c: string) => {
        if (c.length == 9) {
          return `${c.replace("#", "0x")}`;
        } else if (c.length == 7) {
          return `${c.replace("#", "0x")}FF`;
        } else if (c.length == 5) {
          const lastChar = c[4];
          const firstChars = c.slice(1, 4);
          return `0x${firstChars}${firstChars}${lastChar}${lastChar}`;
        } else if (c.length == 4) {
          return `${c.replace("#", "0x")}${c.replace("#", "")}FF`;
        } else {
          throw new Error(`Unexpected hex color: ${c}`);
        }
      }),
    );
    if (asset.type && asset.name) {
      detailIndexes.push(i);
      detailTypes.push(asset.type);
      detailNames.push(asset.name);
    }
    asset.index = i;
    asset.run = true;
    writeFileSync("./asset-config.json", JSON.stringify(assetConfig), "utf8");
  }
  console.log("Adding assets to LayerMaster...");
  await layerMaster.addAssets(assetIndexes, assetContracts, assetColors);
  console.log("Adding details to LayerMaster...");
  await layerMaster.addDetails(detailIndexes, detailTypes, detailNames);
}

main().catch(error => {
  console.error(error);
  process.exitCode = 1;
});
