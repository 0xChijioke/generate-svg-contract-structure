import { readFileSync, writeFileSync } from "fs";
import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const deployLayerMaster: DeployFunction = async function (hre: HardhatRuntimeEnvironment) {
  const assetConfig = JSON.parse(readFileSync("./asset-config.json", "utf8"));
  const { deployer } = await hre.getNamedAccounts();
  const { deploy, all } = hre.deployments;
  const allContracts = await all();
  // Assign contracts to each asset in config
  for (const assetName of Object.keys(assetConfig)) {
    // Reset to empty array so that multiple runs don't duplicate entries
    assetConfig[assetName].contracts = [];
    assetConfig[assetName].run = false;
    for (const contractName of Object.keys(allContracts)) {
      if (contractName.includes(assetName)) {
        assetConfig[assetName].contracts.push(allContracts[contractName].address);
      }
    }
  }
  writeFileSync("./asset-config.json", JSON.stringify(assetConfig), "utf8");
  const { START_TAG, END_TAG } = JSON.parse(readFileSync("./project-config.json", "utf8"));
  await deploy("LayerMaster", {
    from: deployer,
    log: true,
    args: [START_TAG, END_TAG],
    autoMine: true,
  });
};
export default deployLayerMaster;

deployLayerMaster.tags = ["LayerMaster"];
