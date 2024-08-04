import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_01_true_01_BACKGROUND_OVERLAY_squido: DeployFunction =
  async function (hre: HardhatRuntimeEnvironment) {
    const { deployer } = await hre.getNamedAccounts();
    const { deploy } = hre.deployments;

    await deploy("Asset_01_true_01_BACKGROUND_OVERLAY_squido_0", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_01_true_01_BACKGROUND_OVERLAY_squido_1", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_01_true_01_BACKGROUND_OVERLAY_squido_2", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_01_true_01_BACKGROUND_OVERLAY_squido_3", {
      from: deployer,
      log: true,
      autoMine: true,
    });

    await deploy("Asset_01_true_01_BACKGROUND_OVERLAY_squido_4", {
      from: deployer,
      log: true,
      autoMine: true,
    });
  };
export default Asset_01_true_01_BACKGROUND_OVERLAY_squido;

Asset_01_true_01_BACKGROUND_OVERLAY_squido.tags = [
  "Asset_01_true_01_BACKGROUND_OVERLAY_squido_0",
  "Asset_01_true_01_BACKGROUND_OVERLAY_squido_1",
  "Asset_01_true_01_BACKGROUND_OVERLAY_squido_2",
  "Asset_01_true_01_BACKGROUND_OVERLAY_squido_3",
  "Asset_01_true_01_BACKGROUND_OVERLAY_squido_4",
];
