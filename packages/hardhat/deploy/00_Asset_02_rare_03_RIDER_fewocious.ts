import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_02_rare_03_RIDER_fewocious: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_02_rare_03_RIDER_fewocious_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_03_RIDER_fewocious_1", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_03_RIDER_fewocious_2", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_03_RIDER_fewocious_3", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_03_RIDER_fewocious_4", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_03_RIDER_fewocious_5", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_02_rare_03_RIDER_fewocious;

Asset_02_rare_03_RIDER_fewocious.tags = [
  "Asset_02_rare_03_RIDER_fewocious_0",
  "Asset_02_rare_03_RIDER_fewocious_1",
  "Asset_02_rare_03_RIDER_fewocious_2",
  "Asset_02_rare_03_RIDER_fewocious_3",
  "Asset_02_rare_03_RIDER_fewocious_4",
  "Asset_02_rare_03_RIDER_fewocious_5",
];
