import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_01_true_05_BODY_tweetybord: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_01_true_05_BODY_tweetybord_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_05_BODY_tweetybord_1", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_05_BODY_tweetybord_2", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_05_BODY_tweetybord_3", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_05_BODY_tweetybord_4", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_05_BODY_tweetybord_5", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_05_BODY_tweetybord_6", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_01_true_05_BODY_tweetybord;

Asset_01_true_05_BODY_tweetybord.tags = [
  "Asset_01_true_05_BODY_tweetybord_0",
  "Asset_01_true_05_BODY_tweetybord_1",
  "Asset_01_true_05_BODY_tweetybord_2",
  "Asset_01_true_05_BODY_tweetybord_3",
  "Asset_01_true_05_BODY_tweetybord_4",
  "Asset_01_true_05_BODY_tweetybord_5",
  "Asset_01_true_05_BODY_tweetybord_6",
];
