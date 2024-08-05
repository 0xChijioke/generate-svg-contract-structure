import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_02_rare_04_ARMS_BACK_fewocious: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_02_rare_04_ARMS_BACK_fewocious_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_02_rare_04_ARMS_BACK_fewocious;

Asset_02_rare_04_ARMS_BACK_fewocious.tags = [
  "Asset_02_rare_04_ARMS_BACK_fewocious_0",
];
