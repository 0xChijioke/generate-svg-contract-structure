// hooks/usePack.ts
import { useEffect, useState } from "react";
import { useScaffoldContract, useScaffoldContractRead } from "~~/hooks/scaffold-eth";

export const usePack = (tokenId: string | string[] | undefined) => {
  const [isOpened, setIsOpened] = useState<boolean>(false);
  const [ownerAddr, setOwnerAddr] = useState<string>("");
  const [error, setError] = useState<string | null>(null);

  //   const { data: tokenBalance } = useScaffoldContractRead({
  //     contractName: "OnchainMechaPacks",
  //     functionName: "balanceOf",
  //     args: [address],
  //   });

  // Fetch pack data
  const { data: packData, error: packError } = useScaffoldContractRead({
    contractName: "OnchainMechaPacks",
    functionName: "packs",
    args: [tokenId ? BigInt(tokenId as string) : undefined],
  }) as { data: [bigint, bigint, boolean, bigint] | undefined; error: any };

  // Fetch pack owner
  const { data: owner, error: ownerError } = useScaffoldContractRead({
    contractName: "OnchainMechaPacks",
    functionName: "ownerOf",
    args: [tokenId ? BigInt(tokenId as string) : undefined],
  });

  // Set opened state
  useEffect(() => {
    if (packData) {
      setIsOpened(packData[1] !== 0n);
    }
  }, [packData]);

  // Set owner address
  useEffect(() => {
    if (owner) {
      setOwnerAddr(owner);
    }
  }, [owner]);

  // Handle errors
  useEffect(() => {
    if (packError || ownerError) {
      setError("☹️ Failed to fetch pack details or owner information.");
      console.log(packError, ownerError);
    }
  }, [packError, ownerError]);

  return {
    packData,
    isOpened,
    ownerAddr,
    error,
  };
};
