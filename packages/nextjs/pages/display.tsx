import { useEffect, useState } from "react";
import Image from "next/image";
import { Contract, InterfaceAbi, JsonRpcProvider } from "ethers";
import type { NextPage } from "next";
import { useAccount } from "wagmi";
import { MetaHeader } from "~~/components/MetaHeader";
import { useDeployedContractInfo, useScaffoldEventHistory } from "~~/hooks/scaffold-eth";
import scaffoldConfig from "~~/scaffold.config";
import { getTargetNetwork } from "~~/utils/scaffold-eth";

const chain = getTargetNetwork();
const provider = new JsonRpcProvider(chain.rpcUrls.public.http[0]);

const Display: NextPage = () => {
  const { address } = useAccount();
  const [tokenIds, setTokenIds] = useState<number[]>([]);
  const [svgImages, setSvgImages] = useState<{ [tokenId: number]: string }>({});
  const { data: onchainMechData } = useDeployedContractInfo("OnchainMechs");

  const { data: mintCardEvents } = useScaffoldEventHistory({
    contractName: "OnchainMechs",
    eventName: "Transfer",
    fromBlock: scaffoldConfig.fromBlock,
    filters: { from: "0x0000000000000000000000000000000000000000", to: address },
  });

  const getSVG = async (tokenId: number) => {
    const { address: contractAddress, abi: contractAbi } = onchainMechData as { address: string; abi: InterfaceAbi };
    const contract = new Contract(contractAddress, contractAbi, provider);
    const svgData = await contract.generateSVGofTokenById(tokenId);
    return `data:image/svg+xml;base64,${btoa(svgData)}`;
  };

  useEffect(() => {
    const fetchSVG = async (tokenId: number) => {
      const svg = await getSVG(tokenId);
      setSvgImages(prevSvgImages => ({ ...prevSvgImages, [tokenId]: svg }));
    };

    if (tokenIds.length > 0) {
      const newTokenIds = tokenIds.filter(tokenId => !svgImages[tokenId]);
      newTokenIds.forEach(tokenId => fetchSVG(tokenId));
    }
  }, [tokenIds]);

  useEffect(() => {
    if (mintCardEvents && mintCardEvents.length > 0) {
      const newTokenIds = mintCardEvents.map(event => event.args.tokenId);
      setTokenIds(prevTokenIds => [...new Set([...prevTokenIds, ...newTokenIds])]);
    }
  }, [mintCardEvents]);

  return (
    <>
      <MetaHeader title="Owned | Mecha" description="Showcasing your owned mecha.">
        {/* We are importing the font this way to lighten the size of SE2. */}
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link href="https://fonts.googleapis.com/css2?family=Bai+Jamjuree&display=swap" rel="stylesheet" />
      </MetaHeader>
      <div className="flex min-h-full items-center py-auto justify-center" data-theme="mecha">
        {tokenIds.map(tokenId => (
          <div key={tokenId} className="flex justify-center items-center w-80 h-80">
            {svgImages[tokenId] && (
              <Image alt={`NFT ${tokenId}`} src={svgImages[tokenId]} priority width={400} height={400} />
            )}
          </div>
        ))}
      </div>
    </>
  );
};

export default Display;
