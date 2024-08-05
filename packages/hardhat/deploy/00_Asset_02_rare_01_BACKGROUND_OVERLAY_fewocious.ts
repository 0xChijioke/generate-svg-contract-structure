import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_02_rare_01_BACKGROUND_OVERLAY_fewocious: DeployFunction =
  async function (hre: HardhatRuntimeEnvironment) {
    const { deployer } = await hre.getNamedAccounts();
    const { deploy } = hre.deployments;

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_fewocious_0", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_fewocious_1", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_fewocious_2", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_fewocious_3", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_fewocious_4", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_fewocious_5", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_fewocious_6", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_fewocious_7", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_fewocious_8", {
      from: deployer,
      log: true,
      autoMine: true,
    });
  };
export default Asset_02_rare_01_BACKGROUND_OVERLAY_fewocious;

Asset_02_rare_01_BACKGROUND_OVERLAY_fewocious.tags = [
  "Asset_02_rare_01_BACKGROUND_OVERLAY_fewocious_0",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_fewocious_1",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_fewocious_2",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_fewocious_3",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_fewocious_4",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_fewocious_5",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_fewocious_6",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_fewocious_7",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_fewocious_8",
];
