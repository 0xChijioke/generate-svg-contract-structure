import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_02_rare_07_ARMS_FRONT_squido: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_02_rare_07_ARMS_FRONT_squido_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_02_rare_07_ARMS_FRONT_squido;

Asset_02_rare_07_ARMS_FRONT_squido.tags = [
  "Asset_02_rare_07_ARMS_FRONT_squido_0",
];
