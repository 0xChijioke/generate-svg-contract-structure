import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_02_rare_02_POD_tweetybord: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_02_rare_02_POD_tweetybord_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_02_POD_tweetybord_1", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_02_rare_02_POD_tweetybord;

Asset_02_rare_02_POD_tweetybord.tags = [
  "Asset_02_rare_02_POD_tweetybord_0",
  "Asset_02_rare_02_POD_tweetybord_1",
];
