import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const deployOnchainMechsPacks: DeployFunction = async function (hre: HardhatRuntimeEnvironment) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;
  await deploy("OnchainMechsPacks", {
    from: deployer,
    log: true,
    args: [7000],
    autoMine: true,
  });
};
export default deployOnchainMechsPacks;

deployOnchainMechsPacks.tags = ["OnchainMechsPacks"];
