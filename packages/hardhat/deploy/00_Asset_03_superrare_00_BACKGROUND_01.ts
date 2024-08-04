import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_03_superrare_00_BACKGROUND_01: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_03_superrare_00_BACKGROUND_01_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_00_BACKGROUND_01_1", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_00_BACKGROUND_01_2", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_00_BACKGROUND_01_3", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_00_BACKGROUND_01_4", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_00_BACKGROUND_01_5", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_00_BACKGROUND_01_6", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_00_BACKGROUND_01_7", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_00_BACKGROUND_01_8", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_00_BACKGROUND_01_9", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_00_BACKGROUND_01_10", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_00_BACKGROUND_01_11", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_00_BACKGROUND_01_12", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_00_BACKGROUND_01_13", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_03_superrare_00_BACKGROUND_01;

Asset_03_superrare_00_BACKGROUND_01.tags = [
  "Asset_03_superrare_00_BACKGROUND_01_0",
  "Asset_03_superrare_00_BACKGROUND_01_1",
  "Asset_03_superrare_00_BACKGROUND_01_2",
  "Asset_03_superrare_00_BACKGROUND_01_3",
  "Asset_03_superrare_00_BACKGROUND_01_4",
  "Asset_03_superrare_00_BACKGROUND_01_5",
  "Asset_03_superrare_00_BACKGROUND_01_6",
  "Asset_03_superrare_00_BACKGROUND_01_7",
  "Asset_03_superrare_00_BACKGROUND_01_8",
  "Asset_03_superrare_00_BACKGROUND_01_9",
  "Asset_03_superrare_00_BACKGROUND_01_10",
  "Asset_03_superrare_00_BACKGROUND_01_11",
  "Asset_03_superrare_00_BACKGROUND_01_12",
  "Asset_03_superrare_00_BACKGROUND_01_13",
];
