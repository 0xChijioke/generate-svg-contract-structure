import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_01_true_03_RIDER_squido: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_01_true_03_RIDER_squido_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_03_RIDER_squido_1", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_03_RIDER_squido_2", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_03_RIDER_squido_3", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_03_RIDER_squido_4", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_03_RIDER_squido_5", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_03_RIDER_squido_6", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_03_RIDER_squido_7", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_03_RIDER_squido_8", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_01_true_03_RIDER_squido_9", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_01_true_03_RIDER_squido;

Asset_01_true_03_RIDER_squido.tags = [
  "Asset_01_true_03_RIDER_squido_0",
  "Asset_01_true_03_RIDER_squido_1",
  "Asset_01_true_03_RIDER_squido_2",
  "Asset_01_true_03_RIDER_squido_3",
  "Asset_01_true_03_RIDER_squido_4",
  "Asset_01_true_03_RIDER_squido_5",
  "Asset_01_true_03_RIDER_squido_6",
  "Asset_01_true_03_RIDER_squido_7",
  "Asset_01_true_03_RIDER_squido_8",
  "Asset_01_true_03_RIDER_squido_9",
];
