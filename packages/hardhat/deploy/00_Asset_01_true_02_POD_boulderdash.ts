import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_01_true_02_POD_boulderdash: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_01_true_02_POD_boulderdash_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_02_POD_boulderdash_1", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_02_POD_boulderdash_2", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_01_true_02_POD_boulderdash;

Asset_01_true_02_POD_boulderdash.tags = [
  "Asset_01_true_02_POD_boulderdash_0",
  "Asset_01_true_02_POD_boulderdash_1",
  "Asset_01_true_02_POD_boulderdash_2",
];
