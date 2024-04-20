import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const deployOnchainMechs: DeployFunction = async function (hre: HardhatRuntimeEnvironment) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy, all } = hre.deployments;
  const allContracts = await all();
  const layerMaster = allContracts?.["LayerMaster"].address;
  const packsContract = allContracts?.["OnchainMechsPacks"].address;
  const deployment = await deploy("OnchainMechs", {
    from: deployer,
    log: true,
    args: [layerMaster, packsContract],
    autoMine: true,
  });

  const OnchainMechsPacks = await hre.ethers.getContractFactory("OnchainMechsPacks");
  const onchainMechsPacks = OnchainMechsPacks.attach(packsContract);
  // Set the OnchainMechs contract address in the OnchainMechsPacks contract
  await onchainMechsPacks.setMechsContract(deployment.address);
};
export default deployOnchainMechs;

deployOnchainMechs.tags = ["OnchainMechs"];
