import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_03_superrare_01_BACKGROUND_OVERLAY_02: DeployFunction =
  async function (hre: HardhatRuntimeEnvironment) {
    const { deployer } = await hre.getNamedAccounts();
    const { deploy } = hre.deployments;

    await deploy("Asset_03_superrare_01_BACKGROUND_OVERLAY_02_0", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_03_superrare_01_BACKGROUND_OVERLAY_02_1", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_03_superrare_01_BACKGROUND_OVERLAY_02_2", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_03_superrare_01_BACKGROUND_OVERLAY_02_3", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_03_superrare_01_BACKGROUND_OVERLAY_02_4", {
      from: deployer,
      log: true,
      autoMine: true,
    });
  };
export default Asset_03_superrare_01_BACKGROUND_OVERLAY_02;

Asset_03_superrare_01_BACKGROUND_OVERLAY_02.tags = [
  "Asset_03_superrare_01_BACKGROUND_OVERLAY_02_0",
  "Asset_03_superrare_01_BACKGROUND_OVERLAY_02_1",
  "Asset_03_superrare_01_BACKGROUND_OVERLAY_02_2",
  "Asset_03_superrare_01_BACKGROUND_OVERLAY_02_3",
  "Asset_03_superrare_01_BACKGROUND_OVERLAY_02_4",
];
