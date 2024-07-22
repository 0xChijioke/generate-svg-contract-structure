// pages/api/render-svg/[tokenId].ts
import { Contract, JsonRpcProvider } from "ethers";
import contracts from "~~/generated/deployedContracts";
import { getTargetNetwork } from "~~/utils/scaffold-eth";

const chain = getTargetNetwork();
const provider = new JsonRpcProvider(chain.rpcUrls.public.http[0]);

export default async function handler(req: any, res: any) {
  const { tokenId } = req.query;

  if (!tokenId) {
    return res.status(400).json({ error: "Token ID is required" });
  }

  const contractAddress = contracts[8453][0].contracts.OnchainMecha.address;
  const contractAbi = contracts[8453][0].contracts.OnchainMecha.abi;

  if (!contractAbi || !contractAddress) {
    return res.status(500).json({ error: "Contract not found" });
  }

  const contract = new Contract(contractAddress, contractAbi, provider);

  try {
    const svg = await contract.renderTokenById(tokenId);
    return res.status(200).json({ svg });
  } catch (error: any) {
    console.error("Error fetching token SVG:", error);
    return res.status(500).json({ error: error.message });
  }
}
