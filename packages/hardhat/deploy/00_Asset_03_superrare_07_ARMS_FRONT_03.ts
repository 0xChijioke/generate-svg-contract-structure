import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_03_superrare_07_ARMS_FRONT_03: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_03_superrare_07_ARMS_FRONT_03_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_07_ARMS_FRONT_03_1", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_03_superrare_07_ARMS_FRONT_03;

Asset_03_superrare_07_ARMS_FRONT_03.tags = [
  "Asset_03_superrare_07_ARMS_FRONT_03_0",
  "Asset_03_superrare_07_ARMS_FRONT_03_1",
];
