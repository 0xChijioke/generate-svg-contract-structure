import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_02_rare_01_BACKGROUND_OVERLAY_gunner: DeployFunction =
  async function (hre: HardhatRuntimeEnvironment) {
    const { deployer } = await hre.getNamedAccounts();
    const { deploy } = hre.deployments;

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_0", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_1", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_2", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_3", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_4", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_5", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_6", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_7", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_8", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_9", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_10", {
      from: deployer,
      log: true,
      autoMine: true,
    });
  };
export default Asset_02_rare_01_BACKGROUND_OVERLAY_gunner;

Asset_02_rare_01_BACKGROUND_OVERLAY_gunner.tags = [
  "Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_0",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_1",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_2",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_3",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_4",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_5",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_6",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_7",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_8",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_9",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_gunner_10",
];
