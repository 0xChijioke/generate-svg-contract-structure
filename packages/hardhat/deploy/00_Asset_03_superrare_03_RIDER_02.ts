import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_03_superrare_03_RIDER_02: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_03_superrare_03_RIDER_02_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_03_superrare_03_RIDER_02_1", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_03_superrare_03_RIDER_02;

Asset_03_superrare_03_RIDER_02.tags = [
  "Asset_03_superrare_03_RIDER_02_0",
  "Asset_03_superrare_03_RIDER_02_1",
];
