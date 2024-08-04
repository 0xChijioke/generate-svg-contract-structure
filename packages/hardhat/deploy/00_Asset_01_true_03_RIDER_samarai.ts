import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_01_true_03_RIDER_samarai: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_01_true_03_RIDER_samarai_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_03_RIDER_samarai_1", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_01_true_03_RIDER_samarai;

Asset_01_true_03_RIDER_samarai.tags = [
  "Asset_01_true_03_RIDER_samarai_0",
  "Asset_01_true_03_RIDER_samarai_1",
];
