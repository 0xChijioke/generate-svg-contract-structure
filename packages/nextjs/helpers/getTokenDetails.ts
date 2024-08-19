import { getContractInstance } from "./getContract";
import { ContractRunner } from "ethers";

// Function to fetch card data for a given token ID
export const getTokenDetails = async (tokenId: string, provider: ContractRunner) => {
  const contract = getContractInstance(provider);

  try {
    // Fetch token URI
    const tokenURI = await contract.tokenURI(tokenId);
    // console.log(`Token URI: ${tokenURI}`);

    // Decode base64 JSON from tokenURI
    const json = atob(tokenURI.split(",")[1]);
    const tokenMetadata = JSON.parse(json);

    // console.log(tokenMetadata)
    return {
      tokenMetadata,
      // mechaType,
    };
  } catch (error) {
    console.error(`Error fetching token data for token ID ${tokenId}:`, error);
    return "";
  }
};
