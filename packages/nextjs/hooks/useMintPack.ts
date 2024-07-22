
import { useAccount } from "wagmi";
import { useScaffoldContractRead, useScaffoldContractWrite } from "~~/hooks/scaffold-eth";

export const useMintPack = () => {
  const { address } = useAccount();

  const { writeAsync, isLoading, isMining, isSuccess, isError } = useScaffoldContractWrite({
    contractName: "OnchainMechaPacks",
    functionName: "mintPack",
    value: "0.0007777777",
    onBlockConfirmation: txnReceipt => {
      console.log("Transaction blockHash", txnReceipt.blockHash);
    },
  });

  const { data: tokenId } = useScaffoldContractRead({
    contractName: "OnchainMechaPacks",
    functionName: "tokenOfOwnerByIndex",
    args: [address, 0n],
  });

  return {
    minting: isLoading || isMining,
    isError,
    isSuccess,
    tokenId,
    writeAsync,
  };
};
