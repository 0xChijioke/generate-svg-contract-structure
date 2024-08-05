import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_02_rare_04_ARMS_BACK_squido: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_02_rare_04_ARMS_BACK_squido_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_04_ARMS_BACK_squido_1", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_04_ARMS_BACK_squido_2", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_02_rare_04_ARMS_BACK_squido;

Asset_02_rare_04_ARMS_BACK_squido.tags = [
  "Asset_02_rare_04_ARMS_BACK_squido_0",
  "Asset_02_rare_04_ARMS_BACK_squido_1",
  "Asset_02_rare_04_ARMS_BACK_squido_2",
];
