import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_03_superrare_03_RIDER_03: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_03_superrare_03_RIDER_03_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_03_RIDER_03_1", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_03_RIDER_03_2", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_03_RIDER_03_3", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_03_RIDER_03_4", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_03_RIDER_03_5", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_03_RIDER_03_6", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_03_superrare_03_RIDER_03;

Asset_03_superrare_03_RIDER_03.tags = [
  "Asset_03_superrare_03_RIDER_03_0",
  "Asset_03_superrare_03_RIDER_03_1",
  "Asset_03_superrare_03_RIDER_03_2",
  "Asset_03_superrare_03_RIDER_03_3",
  "Asset_03_superrare_03_RIDER_03_4",
  "Asset_03_superrare_03_RIDER_03_5",
  "Asset_03_superrare_03_RIDER_03_6",
];
