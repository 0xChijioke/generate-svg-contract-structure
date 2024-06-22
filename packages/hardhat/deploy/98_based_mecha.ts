import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const deployBasedMecha: DeployFunction = async function (hre: HardhatRuntimeEnvironment) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy, all } = hre.deployments;
  const allContracts = await all();
  const layerMaster = allContracts?.["LayerMaster"].address;
  const packsContract = allContracts?.["BasedMechaPacks"].address;
  const deployment = await deploy("BasedMecha", {
    from: deployer,
    log: true,
    args: [layerMaster, packsContract],
    autoMine: true,
  });

  const BasedMechaPacks = await hre.ethers.getContractFactory("BasedMechaPacks");
  const basedMechaPacks = BasedMechaPacks.attach(packsContract);
  // Set the BasedMecha contract address in the BasedMechaPacks contract
  await basedMechaPacks.setMechaContract(deployment.address);
};
export default deployBasedMecha;

deployBasedMecha.tags = ["BasedMecha"];
