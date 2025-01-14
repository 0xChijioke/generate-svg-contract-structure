import React, { useEffect, useState } from "react";
import Image from "next/image";
import { useRouter } from "next/router";
import { JsonRpcProvider } from "ethers";
import { useAccount } from "wagmi";
import { ArrowRightCircleIcon } from "@heroicons/react/24/outline";
import GalleryLayout from "~~/components/mecha/gallery/GalleryLayout";
import { getContractInstance } from "~~/helpers/getContract";
import { getTargetNetwork } from "~~/utils/scaffold-eth";

const chain = getTargetNetwork();
const provider = new JsonRpcProvider(chain.rpcUrls.public.http[0]);
const contract = getContractInstance(provider);

const Latest = () => {
  const router = useRouter();
  const { address } = useAccount();
  const [lastThreeTokens, setLastThreeTokens] = useState<number[]>([]);
  const [svgData, setSvgData] = useState<Map<number, string>>(new Map());
  const [loading, setLoading] = useState<boolean>(true);

  useEffect(() => {
    const fetchLastThreeTokens = async () => {
      try {
        if (!address) throw new Error("No address found");

        const balance = Number(await contract.balanceOf(address));

        const indices = [
          balance - 3 >= 0 ? balance - 3 : 0,
          balance - 2 >= 0 ? balance - 2 : 0,
          balance - 1 >= 0 ? balance - 1 : 0,
        ];

        const tokenIdsPromises = indices.map(index => contract.tokenOfOwnerByIndex(address, index));
        const tokenIds = await Promise.all(tokenIdsPromises);

        setLastThreeTokens(tokenIds.map(id => Number(id)));

        const svgPromises = tokenIds.map(async tokenId => {
          const svg = await contract.generateSVGofTokenById(tokenId.toString());
          return { tokenId: Number(tokenId), svgData: `data:image/svg+xml;base64,${btoa(svg)}` };
        });

        const svgResults = await Promise.all(svgPromises);
        const svgMap = new Map(svgResults.map(({ tokenId, svgData }) => [tokenId, svgData]));
        setSvgData(svgMap);

        setLoading(false);
      } catch (error) {
        console.error("Error fetching token IDs or SVGs:", error);
        setLoading(false);
      }
    };

    fetchLastThreeTokens();
  }, [address]);

  return (
    <GalleryLayout title={` ✨ New | Onchain Mecha`} description={`Latest three token IDs`}>
      <div className="flex flex-col w-full h-full z-10 items-center justify-center min-h-screen py-8">
        {loading ? (
          <span className="loading loading-spinner loading-lg"></span>
        ) : (
          <div className="flex flex-col items-center w-full mt-10 max-w-7xl">
            <h2 className="lg:text-2xl text-lg p-3 font-bold mt-20 text-center mb-6">
              Check out the latest additions to your collection!
            </h2>
            <div className="grid grid-cols-1 lg:grid-cols-3 gap-6 w-full">
              {lastThreeTokens.length > 0 ? (
                lastThreeTokens.map(tokenId => (
                  <div
                    key={tokenId}
                    className="flex flex-col w-full min-h-96 items-center border border-opacity-40 border-gray-300 rounded-lg p-4 shadow-lg"
                  >
                    {svgData.has(tokenId) ? (
                      <Image
                        src={svgData.get(tokenId) as string}
                        width={800}
                        height={800}
                        alt={`Token ${tokenId} SVG`}
                        className="rounded-md w-full"
                      />
                    ) : (
                      <span className="loading loading-spinner loading-lg"></span>
                    )}
                  </div>
                ))
              ) : (
                <div className="flex justify-center items-center w-full h-full col-span-full">
                  <p className="text-center">Nothing to display</p>
                </div>
              )}
            </div>
          </div>
        )}
        <div className="mt-2 flex space-x-4">
          <button
            onClick={() => router.push("/gallery")}
            className="bg-transparent text-lg flex flex-row items-center text-white font-bold py-3 px-6 rounded-lg shadow-md transition duration-300 transform hover:scale-105 focus:outline-none"
          >
            Go to Gallery
          </button>
          <button
            onClick={() => router.push("/mint")}
            className="bg-transparent text-lg flex flex-row items-center text-white font-bold py-3 px-6 rounded-lg shadow-md transition duration-300 transform hover:scale-105 focus:outline-none"
          >
            Go to Mint
            <ArrowRightCircleIcon className="ml-2 h-5 w-5" />
          </button>
        </div>
      </div>
    </GalleryLayout>
  );
};

export default Latest;
