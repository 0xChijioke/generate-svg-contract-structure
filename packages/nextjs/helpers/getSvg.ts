import { getContractInstance } from "./getContract";
import { Contract, ContractRunner } from "ethers";
import contracts from "~~/generated/deployedContracts";

// Function to fetch SVG data for a given token ID
export const getSVG = async (tokenId: string, provider: ContractRunner) => {
  const contract = getContractInstance(provider);

  try {
    const svgData = await contract.generateSVGofTokenById(tokenId);
    // console.log(svgData)
    return `data:image/svg+xml;base64,${btoa(svgData)}`;
  } catch (error) {
    console.error(`Error fetching SVG data for token ID ${tokenId}:`, error);
    return "";
  }
};
