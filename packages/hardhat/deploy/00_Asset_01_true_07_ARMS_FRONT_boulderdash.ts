import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_01_true_07_ARMS_FRONT_boulderdash: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_01_true_07_ARMS_FRONT_boulderdash_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_01_true_07_ARMS_FRONT_boulderdash;

Asset_01_true_07_ARMS_FRONT_boulderdash.tags = [
  "Asset_01_true_07_ARMS_FRONT_boulderdash_0",
];
