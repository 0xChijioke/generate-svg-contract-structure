import { readFileSync, writeFileSync } from "fs";
import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";
import { ethers } from "hardhat";

const deployLayerMaster: DeployFunction = async function (hre: HardhatRuntimeEnvironment) {
  const assetConfig = JSON.parse(readFileSync("./asset-config.json", "utf8"));
  const { deployer } = await hre.getNamedAccounts();
  const { deploy, all } = hre.deployments;
  const allContracts = await all();
  // Assign contracts to each asset in config
  for (const assetName of Object.keys(assetConfig)) {
    // Reset to empty array so that multiple runs don't duplicate entries
    assetConfig[assetName].contracts = [];
    for (const contractName of Object.keys(allContracts)) {
      if (contractName.includes(assetName)) {
        assetConfig[assetName].contracts.push(allContracts[contractName].address);
      }
    }
  }
  writeFileSync("./asset-config.json", JSON.stringify(assetConfig), "utf8");
  const { START_TAG, END_TAG } = JSON.parse(readFileSync("./project-config.json", "utf8"));
  const contract = await deploy("LayerMaster", {
    from: deployer,
    log: true,
    args: [START_TAG, END_TAG],
    autoMine: true,
  });

  // Call to LM contract to add assets contained in assetConfig
  const LayerMaster = await ethers.getContractFactory("LayerMaster");
  const layerMaster = LayerMaster.attach(contract.address);
  for (let i = 0; i < Object.keys(assetConfig).length; i++) {
    const assetName = Object.keys(assetConfig)[i];
    const asset = assetConfig[assetName];
    await layerMaster.addAsset(
      i,
      asset.contracts,
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
  }
};
export default deployLayerMaster;

deployLayerMaster.tags = ["LayerMaster"];
