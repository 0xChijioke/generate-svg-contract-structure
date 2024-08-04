import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_01_true_03_RIDER_fewocious: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_01_true_03_RIDER_fewocious_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_03_RIDER_fewocious_1", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_03_RIDER_fewocious_2", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_03_RIDER_fewocious_3", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_01_true_03_RIDER_fewocious;

Asset_01_true_03_RIDER_fewocious.tags = [
  "Asset_01_true_03_RIDER_fewocious_0",
  "Asset_01_true_03_RIDER_fewocious_1",
  "Asset_01_true_03_RIDER_fewocious_2",
  "Asset_01_true_03_RIDER_fewocious_3",
];
