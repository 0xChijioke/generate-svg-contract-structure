import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_05_other_assets_pack: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_05_other_assets_pack_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_05_other_assets_pack_1", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_05_other_assets_pack_2", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_05_other_assets_pack_3", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_05_other_assets_pack_4", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_05_other_assets_pack;

Asset_05_other_assets_pack.tags = [
  "Asset_05_other_assets_pack_0",
  "Asset_05_other_assets_pack_1",
  "Asset_05_other_assets_pack_2",
  "Asset_05_other_assets_pack_3",
  "Asset_05_other_assets_pack_4",
];
