import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_02_rare_00_BACKGROUND_samarai: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_02_rare_00_BACKGROUND_samarai_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_02_rare_00_BACKGROUND_samarai;

Asset_02_rare_00_BACKGROUND_samarai.tags = [
  "Asset_02_rare_00_BACKGROUND_samarai_0",
];
