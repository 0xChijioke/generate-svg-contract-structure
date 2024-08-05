import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_02_rare_01_BACKGROUND_OVERLAY_samarai: DeployFunction =
  async function (hre: HardhatRuntimeEnvironment) {
    const { deployer } = await hre.getNamedAccounts();
    const { deploy } = hre.deployments;

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_samarai_0", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_samarai_1", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_samarai_2", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_samarai_3", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_samarai_4", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_samarai_5", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_samarai_6", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_samarai_7", {
      from: deployer,
      log: true,
      autoMine: true,
    });
  };
export default Asset_02_rare_01_BACKGROUND_OVERLAY_samarai;

Asset_02_rare_01_BACKGROUND_OVERLAY_samarai.tags = [
  "Asset_02_rare_01_BACKGROUND_OVERLAY_samarai_0",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_samarai_1",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_samarai_2",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_samarai_3",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_samarai_4",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_samarai_5",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_samarai_6",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_samarai_7",
];
