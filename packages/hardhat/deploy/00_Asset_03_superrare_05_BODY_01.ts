import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_03_superrare_05_BODY_01: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_03_superrare_05_BODY_01_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_05_BODY_01_1", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_05_BODY_01_2", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_05_BODY_01_3", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_03_superrare_05_BODY_01;

Asset_03_superrare_05_BODY_01.tags = [
  "Asset_03_superrare_05_BODY_01_0",
  "Asset_03_superrare_05_BODY_01_1",
  "Asset_03_superrare_05_BODY_01_2",
  "Asset_03_superrare_05_BODY_01_3",
];
