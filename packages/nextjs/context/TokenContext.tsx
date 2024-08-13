import React, { ReactNode, createContext, useContext, useEffect, useState } from "react";
import { useInfiniteQuery, useQueryClient } from "@tanstack/react-query";
import { JsonRpcProvider } from "ethers";
import { useAccount } from "wagmi";
import { getContractInstance } from "~~/helpers/getContract";
import { useScaffoldContractRead } from "~~/hooks/scaffold-eth";
import { getTargetNetwork } from "~~/utils/scaffold-eth";

const chain = getTargetNetwork();
const provider = new JsonRpcProvider(chain.rpcUrls.public.http[0]);

interface TokenContextProps {
  userBalance: string;
  tokenIds: string[];
  svgData: { [key: string]: string };
  fetchMoreTokenIds: () => void;
  isFetchingNextPage: boolean;
  hasNextPage: boolean | undefined;
  status: string;
}

const TokenContext = createContext<TokenContextProps | undefined>(undefined);

export const TokenProvider: React.FC<{ children: ReactNode }> = ({ children }) => {
  const { address } = useAccount();
  const queryClient = useQueryClient();
  const [tokenIds, setTokenIds] = useState<string[]>([]);
  const [localSvgData, setLocalSvgData] = useState<{ [key: string]: string }>({});
  const [userBalance, setUserBalance] = useState<string>("");

  const { data: tokenBalance, isLoading: tokenBalanceLoading } = useScaffoldContractRead({
    contractName: "OnchainMecha",
    functionName: "balanceOf",
    args: [address],
  });

  useEffect(() => {
    if (address && tokenBalance) {
      // console.log(tokenBalance);
      setUserBalance(tokenBalance.toString());
    }
    if (Number(tokenBalance) === 0) setUserBalance("0");
  }, [address, tokenBalance]);

  const fetchTokenIds = async ({ pageParam = 0 }) => {
    const res = await fetch(`/api/token-ids/${address}?batchIndex=${pageParam}`);
    if (!res.ok) {
      throw new Error("Failed to fetch token IDs");
    }
    const data = await res.json();
    return data;
  };

  const fetchSVG = async (tokenId: string) => {
    const contract = getContractInstance(provider);
    try {
      const svgData = await contract.generateSVGofTokenById(tokenId);
      return `data:image/svg+xml;base64,${btoa(svgData)}`;
    } catch (error) {
      console.error(`Error fetching SVG data for token ID ${tokenId}:`, error);
      return "";
    }
  };

  const { data, fetchNextPage, hasNextPage, isFetchingNextPage, status } = useInfiniteQuery({
    queryKey: ["tokenIds", address],
    queryFn: fetchTokenIds,
    enabled: !!address,
    initialPageParam: 0,
    getNextPageParam: pages => {
      const totalFetchedTokens = pages.flat().length;
      return totalFetchedTokens < parseInt(userBalance) ? pages.length : undefined;
    },
  });
  // console.log(hasNextPage, status)

  const fetchSVGs = async (newTokenIds: string[]) => {
    const newSvgData: { [key: string]: string } = {};
    for (const tokenId of newTokenIds) {
      const cachedSvg = queryClient.getQueryData<string>(["svg", tokenId]);
      if (cachedSvg) {
        newSvgData[tokenId] = cachedSvg;
      } else {
        try {
          const svgData = await fetchSVG(tokenId);
          newSvgData[tokenId] = svgData;
          queryClient.setQueryData(["svg", tokenId], svgData);
        } catch (error) {
          console.error(`Failed to prefetch SVG for token ID ${tokenId}:`, error);
          newSvgData[tokenId] = "";
        }
      }
    }
    setLocalSvgData(prevSvgData => ({
      ...prevSvgData,
      ...newSvgData,
    }));
  };

  useEffect(() => {
    if (data) {
      const newTokenIds = data.pages.flat();
      setTokenIds(prevTokenIds => {
        const uniqueTokenIds = new Set([...newTokenIds, ...prevTokenIds]);
        return Array.from(uniqueTokenIds);
      });
      fetchSVGs(newTokenIds);
    }
  }, [data]);

  const fetchMoreTokenIds = () => {
    fetchNextPage();
  };

  return (
    <TokenContext.Provider
      value={{
        userBalance,
        tokenIds,
        svgData: localSvgData,
        fetchMoreTokenIds,
        isFetchingNextPage,
        hasNextPage,
        status,
      }}
    >
      {children}
    </TokenContext.Provider>
  );
};

export const useTokenContext = () => {
  const context = useContext(TokenContext);
  if (!context) {
    throw new Error("useTokenContext must be used within a TokenProvider");
  }
  return context;
};
