// helpers/fetchTokenURI.ts
import { useScaffoldContractRead } from "~~/hooks/scaffold-eth";

export const fetchTokenURI = async (address: string, setTokenURI: (uri: string | null) => void) => {
  const { data: updatedTokenBalance } = useScaffoldContractRead({
    contractName: "OnchainMechaPacks",
    functionName: "balanceOf",
    args: [address],
  });

  if (updatedTokenBalance !== undefined) {
    const tokenResult = useScaffoldContractRead({
      contractName: "OnchainMechaPacks",
      functionName: "tokenOfOwnerByIndex",
      args: [address, updatedTokenBalance - 1n],
    });

    const lastTokenId = tokenResult.data as bigint | undefined;
    console.log("Last Token ID:", lastTokenId);

    if (lastTokenId !== undefined) {
      const tokenURIResult = useScaffoldContractRead({
        contractName: "OnchainMechaPacks",
        functionName: "tokenURI",
        args: [lastTokenId],
      });

      const uri = tokenURIResult.data as string | undefined;
      console.log("Token URI:", uri);

      if (uri) {
        setTokenURI(uri);
      }
    }
  }
};
