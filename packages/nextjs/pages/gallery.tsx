import { useEffect, useState } from "react";
import dynamic from "next/dynamic";
import Image from "next/image";
import { Contract, InterfaceAbi, JsonRpcProvider } from "ethers";
import type { NextPage } from "next";
import { useAccount } from "wagmi";
import { MetaHeader } from "~~/components/MetaHeader";
import { RainbowKitCustomConnectButton } from "~~/components/scaffold-eth";
import { useDeployedContractInfo, useScaffoldContractRead, useScaffoldEventHistory } from "~~/hooks/scaffold-eth";
import { placeholder } from "~~/public/assets/placeholder";
import scaffoldConfig from "~~/scaffold.config";
import { getTargetNetwork } from "~~/utils/scaffold-eth";

const GalleryImage = dynamic(() => import("~~/components/mecha/GalleryImage"), { ssr: false });

const chain = getTargetNetwork();
const provider = new JsonRpcProvider(chain.rpcUrls.public.http[0]);

const Gallery: NextPage = () => {
  const { address } = useAccount();
  const [tokenIds, setTokenIds] = useState<number[]>([]);
  const [ownedCards, setOwnedCards] = useState<{ [tokenId: number]: string }>({});
  const [loading, setLoading] = useState(true);

  const { data: onchainMechData } = useDeployedContractInfo("OnchainMecha");

  // balance or Mecha owned by the address
  const { data: balance } = useScaffoldContractRead({
    contractName: "OnchainMecha",
    functionName: "balanceOf",
    args: [address],
  });

  // token ID owned by the address
  useEffect(() => {
    if (balance) {
      const fetchTokenIds = async () => {
        const { address: contractAddress, abi: contractAbi } = onchainMechData as {
          address: string;
          abi: InterfaceAbi;
        };
        const contract = new Contract(contractAddress, contractAbi, provider);
        const tokenIds = [];
        for (let i = 0; i < Number(balance); i++) {
          const tokenId = await contract.tokenOfOwnerByIndex(address, i);
          tokenIds.push(tokenId);
        }
        setTokenIds(tokenIds);
        setLoading(false);
      };
      fetchTokenIds();
    }
  }, [balance, onchainMechData, address]);

  const getSVG = async (tokenId: number) => {
    const { address: contractAddress, abi: contractAbi } = onchainMechData as { address: string; abi: InterfaceAbi };
    const contract = new Contract(contractAddress, contractAbi, provider);
    const svgData = await contract.generateSVGofTokenById(tokenId);
    return `data:image/svg+xml;base64,${btoa(svgData)}`;
  };

  useEffect(() => {
    const fetchSVG = async (tokenId: number) => {
      const svg = await getSVG(tokenId);
      setOwnedCards(prevSvgImages => ({ ...prevSvgImages, [tokenId]: svg }));
    };

    if (tokenIds.length > 0) {
      const newTokenIds = tokenIds.filter(tokenId => !ownedCards[tokenId]);
      newTokenIds.forEach(tokenId => fetchSVG(tokenId));
    }
  }, [tokenIds]);

  return (
    <>
      <MetaHeader title="Owned | Mecha" description="Showcasing your owned mecha." />

      <div className="fixed inset-0 w-full h-full -z-1">
        <GalleryImage />
      </div>
      <div className="fixed top-20 right-40 z-10">
        <RainbowKitCustomConnectButton />
      </div>

      {/* Loading screen */}
      {loading || !onchainMechData ? (
        <div className="fixed inset-0 flex justify-center items-center bg-opacity-80 text-white">
          <p>Loading...</p>
        </div>
      ) : (
        <section className="relative w-full min-h-screen flex justify-center pt-60 overflow-auto">
          <div className="grid grid-cols-3 gap-8">
            {tokenIds.map(tokenId => (
              <div
                key={tokenId}
                className="flex justify-center items-center rounded-xl shadow-lg p-4 w-fit h-fit transform transition-transform duration-300 hover:scale-105"
              >
                {ownedCards[tokenId] ? (
                  <img
                    alt={`NFT ${tokenId}`}
                    src={ownedCards[tokenId]}
                    className="rounded-xl"
                    width={400}
                    height={400}
                  />
                ) : (
                  <Image alt="placeholder" src={placeholder} className="rounded-xl" width={400} height={400} />
                )}
              </div>
            ))}
          </div>
        </section>
      )}
    </>
  );
};

export default Gallery;
