import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_01_true_06_KANJI_gunner: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_01_true_06_KANJI_gunner_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_01_true_06_KANJI_gunner;

Asset_01_true_06_KANJI_gunner.tags = ["Asset_01_true_06_KANJI_gunner_0"];
