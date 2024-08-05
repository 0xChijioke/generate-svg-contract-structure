import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_01_true_00_BACKGROUND_beefeater: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_01_true_00_BACKGROUND_beefeater_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_00_BACKGROUND_beefeater_1", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_00_BACKGROUND_beefeater_2", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_01_true_00_BACKGROUND_beefeater;

Asset_01_true_00_BACKGROUND_beefeater.tags = [
  "Asset_01_true_00_BACKGROUND_beefeater_0",
  "Asset_01_true_00_BACKGROUND_beefeater_1",
  "Asset_01_true_00_BACKGROUND_beefeater_2",
];
