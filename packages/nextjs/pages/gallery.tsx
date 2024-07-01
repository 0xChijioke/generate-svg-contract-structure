import { useEffect, useState } from "react";
import dynamic from "next/dynamic";
import Image from "next/image";
import { Contract, InterfaceAbi, JsonRpcProvider } from "ethers";
import type { NextPage } from "next";
import { useAccount } from "wagmi";
import { MetaHeader } from "~~/components/MetaHeader";
import { useDeployedContractInfo, useScaffoldContractRead, useScaffoldEventHistory } from "~~/hooks/scaffold-eth";
import { placeholder } from "~~/public/assets/placeholder";
import scaffoldConfig from "~~/scaffold.config";
import { getTargetNetwork } from "~~/utils/scaffold-eth";
import { RainbowKitCustomConnectButton } from "~~/components/scaffold-eth";

const GalleryImage = dynamic(() => import("~~/components/mecha/GalleryImage"), { ssr: false });

const chain = getTargetNetwork();
const provider = new JsonRpcProvider(chain.rpcUrls.public.http[0]);

const Gallery: NextPage = () => {
  const { address } = useAccount();
  const [tokenIds, setTokenIds] = useState<number[]>([]);
  const [ownedCards, setOwnedCards] = useState<{ [tokenId: number]: string }>({});
  const [loading, setLoading] = useState(true);

  const { data: onchainMechData } = useDeployedContractInfo("BasedMecha");

  const { data: mintCardEvents, isLoading: mintCardEventsLoading, error: mintCardEventsError } = useScaffoldEventHistory({
    contractName: "OnchainMecha",
    eventName: "Transfer",
    fromBlock: scaffoldConfig.fromBlock,
    filters: { to: address },
  });
  const { data: mintPackEvents, isLoading: mintPackEventsLoading, error: mintPackEventsError } = useScaffoldEventHistory({
    contractName: "OnchainMechaPacks",
    eventName: "Transfer",
    fromBlock: scaffoldConfig.fromBlock,
    filters: { from: "0x0000000000000000000000000000000000000000", to: address },
  });

console.log(mintPackEvents)


  const { data: tokenId, error, isError } = useScaffoldContractRead({
    contractName: "OnchainMecha",
    functionName: "tokenOfOwnerByIndex",
    args: [address, 0n],
  });

  const { data: totalSupply } = useScaffoldContractRead({
    contractName: "OnchainMecha",
    functionName: "totalSupply"
  });
  console.log(totalSupply)

  const { data: token } = useScaffoldContractRead({
    contractName: "OnchainMecha",
    functionName: "tokenByIndex",
    args: [Number(totalSupply) - 1]
  });
  console.log(token)
  const { data: tokenURI } = useScaffoldContractRead({
    contractName: "OnchainMecha",
    functionName: "tokenURI",
    args: [token]
  });
  console.log(tokenURI)






  console.log(tokenId, error, isError)
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

  useEffect(() => {
    if (mintCardEvents && mintCardEvents.length > 0) {
      const newTokenIds = mintCardEvents.map(event => event.args.tokenId);
      setTokenIds(prevTokenIds => [...new Set([...prevTokenIds, ...newTokenIds])]);
      setLoading(false); // Set loading to false once data is available
    }
  }, [mintCardEvents]);

  console.log(mintCardEvents)

  return (
    <>
      <MetaHeader title="Owned | Mecha" description="Showcasing your owned mecha." />

      {/* Fixed background */}
      <div className="fixed inset-0 w-full h-full -z-1">
        <GalleryImage />
      </div>
      
      {/* RainbowConnect Button */}
      <div className="absolute top-20 right-40 z-10">
        <RainbowKitCustomConnectButton />
      </div>

      {/* Loading screen */}
      {/* {!loading ? ( */}
        {/* <div className="fixed inset-0 flex justify-center items-center bg-opacity-80 text-white">
          <p>Loading...</p>
        </div> */}
      // ) : (
        <section className="relative w-full min-h-screen p-10 pt-20 overflow-auto">
          <div className="grid grid-cols-3 gap-4">
            {tokenIds
              .slice()
              .reverse()
              .map(tokenId => (
                <div
                  key={tokenId}
                  className="flex justify-center items-center rounded-xl shadow-lg p-4 transform transition-transform duration-300 hover:scale-105"
                >
                  {ownedCards[tokenId] ? (
                    <img
                      alt={`NFT ${tokenId}`}
                      src={tokenURI}
                      // src={ownedCards[tokenId]}
                      className="rounded-xl"
                      // priority
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
    }
    </>
  );
};

export default Gallery;
