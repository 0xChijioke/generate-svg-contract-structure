import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const deployBasedMechaPacks: DeployFunction = async function (hre: HardhatRuntimeEnvironment) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;
  await deploy("BasedMechaPacks", {
    from: deployer,
    log: true,
    args: [],
    autoMine: true,
  });
};
export default deployBasedMechaPacks;

deployBasedMechaPacks.tags = ["BasedMechaPacks"];
