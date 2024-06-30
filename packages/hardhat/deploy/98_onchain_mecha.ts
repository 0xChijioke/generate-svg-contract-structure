import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const deployOnchainMecha: DeployFunction = async function (hre: HardhatRuntimeEnvironment) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy, all } = hre.deployments;
  const allContracts = await all();
  const layerMaster = allContracts?.["LayerMaster"].address;
  const packsContract = allContracts?.["OnchainMechaPacks"].address;
  const deployment = await deploy("OnchainMecha", {
    from: deployer,
    log: true,
    args: [layerMaster, packsContract],
    autoMine: true,
  });

  const OnchainMechaPacks = await hre.ethers.getContractFactory("OnchainMechaPacks");
  const onchainMechaPacks = OnchainMechaPacks.attach(packsContract);
  // Set the OnchainMecha contract address in the OnchainMechaPacks contract
  await onchainMechaPacks.setMechaContract(deployment.address);
};
export default deployOnchainMecha;

deployOnchainMecha.tags = ["OnchainMecha"];
