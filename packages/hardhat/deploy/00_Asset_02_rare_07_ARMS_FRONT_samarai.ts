import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_02_rare_07_ARMS_FRONT_samarai: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_02_rare_07_ARMS_FRONT_samarai_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_07_ARMS_FRONT_samarai_1", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_07_ARMS_FRONT_samarai_2", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_02_rare_07_ARMS_FRONT_samarai;

Asset_02_rare_07_ARMS_FRONT_samarai.tags = [
  "Asset_02_rare_07_ARMS_FRONT_samarai_0",
  "Asset_02_rare_07_ARMS_FRONT_samarai_1",
  "Asset_02_rare_07_ARMS_FRONT_samarai_2",
];
