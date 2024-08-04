import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord: DeployFunction =
  async function (hre: HardhatRuntimeEnvironment) {
    const { deployer } = await hre.getNamedAccounts();
    const { deploy } = hre.deployments;

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_0", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_1", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_2", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_3", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_4", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_5", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_6", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_7", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_8", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_9", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_10", {
      from: deployer,
      log: true,
      autoMine: true,
    });
  };
export default Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord;

Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord.tags = [
  "Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_0",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_1",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_2",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_3",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_4",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_5",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_6",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_7",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_8",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_9",
  "Asset_02_rare_01_BACKGROUND_OVERLAY_tweetybord_10",
];
