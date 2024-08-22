import { JsonRpcProvider } from "ethers";
import { getContractInstance } from "~~/helpers/getContract";
import { getTargetNetwork } from "~~/utils/scaffold-eth";

const chain = getTargetNetwork();
const provider = new JsonRpcProvider(chain.rpcUrls.public.http[0]);
const BATCH_SIZE = 9;

export default async function handler(req: any, res: any) {
  const contract = getContractInstance(provider);
  const { address, batchIndex } = req.query;


  if (!address) {
    return res.status(400).json({ error: "User address is required" });
  }

  try {
    const balance = await contract.balanceOf(address);
    const totalTokens = Number(balance);
    const end = totalTokens - batchIndex * BATCH_SIZE;
    const start = Math.max(end - BATCH_SIZE, 0);


    if (start < 0) {
      return res.status(200).json([]);
    }

    const tokenIds = [];
    for (let i = start; i < end; i++) {
      try {
        const tokenId = await contract.tokenOfOwnerByIndex(address, i);
        tokenIds.unshift(tokenId.toString());
      } catch (innerError) {
        console.error(`Error fetching token ID at index ${i} for address ${address}:`, innerError);
      }
    }

    return res.status(200).json(tokenIds);
  } catch (error: any) {
    console.error("Error fetching token IDs:", error);
    return res.status(500).json({ error: error.message });
  }
}
