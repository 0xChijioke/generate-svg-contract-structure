import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_02_rare_03_RIDER_squido: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_02_rare_03_RIDER_squido_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_03_RIDER_squido_1", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_03_RIDER_squido_2", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_03_RIDER_squido_3", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_03_RIDER_squido_4", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_03_RIDER_squido_5", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_03_RIDER_squido_6", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_03_RIDER_squido_7", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_02_rare_03_RIDER_squido;

Asset_02_rare_03_RIDER_squido.tags = [
  "Asset_02_rare_03_RIDER_squido_0",
  "Asset_02_rare_03_RIDER_squido_1",
  "Asset_02_rare_03_RIDER_squido_2",
  "Asset_02_rare_03_RIDER_squido_3",
  "Asset_02_rare_03_RIDER_squido_4",
  "Asset_02_rare_03_RIDER_squido_5",
  "Asset_02_rare_03_RIDER_squido_6",
  "Asset_02_rare_03_RIDER_squido_7",
];
