import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const Asset_02_rare_02_POD_squido: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("Asset_02_rare_02_POD_squido_0", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_02_POD_squido_1", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_02_POD_squido_2", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_02_POD_squido_3", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_02_POD_squido_4", {
    from: deployer,
    log: true,
    autoMine: true,
  });

  await deploy("Asset_02_rare_02_POD_squido_5", {
    from: deployer,
    log: true,
    autoMine: true,
  });
};
export default Asset_02_rare_02_POD_squido;

Asset_02_rare_02_POD_squido.tags = [
  "Asset_02_rare_02_POD_squido_0",
  "Asset_02_rare_02_POD_squido_1",
  "Asset_02_rare_02_POD_squido_2",
  "Asset_02_rare_02_POD_squido_3",
  "Asset_02_rare_02_POD_squido_4",
  "Asset_02_rare_02_POD_squido_5",
];
