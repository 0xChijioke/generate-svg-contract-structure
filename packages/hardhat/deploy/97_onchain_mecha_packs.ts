import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const deployOnchainMechaPacks: DeployFunction = async function (hre: HardhatRuntimeEnvironment) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;
  await deploy("OnchainMechaPacks", {
    from: deployer,
    log: true,
    args: [],
    autoMine: true,
  });
};
export default deployOnchainMechaPacks;

deployOnchainMechaPacks.tags = ["OnchainMechaPacks"];
