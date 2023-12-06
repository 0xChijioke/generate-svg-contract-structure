import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const deployOnchainMechs: DeployFunction = async function (hre: HardhatRuntimeEnvironment) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy, all } = hre.deployments;
  const allContracts = await all();
  const layerMaster = allContracts?.["LayerMaster"].address;
  await deploy("OnchainMechs", {
    from: deployer,
    log: true,
    args: [layerMaster],
    autoMine: true,
  });
};
export default deployOnchainMechs;

deployOnchainMechs.tags = ["OnchainMechs"];
