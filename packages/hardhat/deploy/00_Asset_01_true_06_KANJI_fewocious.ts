import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_01_true_06_KANJI_fewocious: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_01_true_06_KANJI_fewocious_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_01_true_06_KANJI_fewocious;

Asset_01_true_06_KANJI_fewocious.tags = ["Asset_01_true_06_KANJI_fewocious_0"];
