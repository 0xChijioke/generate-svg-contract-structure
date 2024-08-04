import { Contract, ContractRunner } from "ethers";
import contracts from "~~/generated/deployedContracts";

const contractAddress = contracts[8453][0].contracts.OnchainMecha.address;
const contractAbi = contracts[8453][0].contracts.OnchainMecha.abi;

let onchainMechaContract: Contract | null = null;

export const getContractInstance = (provider: ContractRunner): Contract => {
  if (!onchainMechaContract) {
    onchainMechaContract = new Contract(contractAddress, contractAbi, provider);
  }
  return onchainMechaContract;
};
