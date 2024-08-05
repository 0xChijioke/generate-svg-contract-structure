import React, { useEffect, useState } from "react";
import dynamic from "next/dynamic";
import Image from "next/image";
import { useRouter } from "next/router";
import { NextPage } from "next";
import { useAccount, useBlockNumber, useWalletClient } from "wagmi";
import { Address } from "~~/components/scaffold-eth";
import { openPack } from "~~/helpers/openpack";
import { useScaffoldContract, useScaffoldEventSubscriber } from "~~/hooks/scaffold-eth";
import { usePack } from "~~/hooks/usePack";
import { useTransactor } from "~~/hooks/useTransactor";
import { placeholder } from "~~/public/assets/placeholder";

const GalleryLayout = dynamic(() => import("~~/components/mecha/gallery/GalleryLayout"), { ssr: false });
const Openpack = dynamic(() => import("~~/components/mecha/buttons/Openpack"), { ssr: false });

const PackDetails = ({ ownerAddr, isOpened, packData, blockNumber, remainingBlocks }: any) => (
  <div className="shadow-md p-6 w-full max-w-2xl">
    <h2 className="text-2xl font-bold mb-4">Pack Details</h2>
    <div className="mb-2 flex space-x-2 whitespace-nowrap">
      <strong>Owner :</strong> <Address address={ownerAddr} />
    </div>
    <p className="mb-2">
      <strong>Open State:</strong> {isOpened ? "Opened" : "Not Opened"}
    </p>
    <p className="mb-2">
      <strong>Target Block Number:</strong> {packData ? packData[0].toString() : "N/A"}
    </p>
    <p className="mb-2">
      <strong>Current Block Number:</strong> {Number(blockNumber)}
    </p>
    {remainingBlocks !== null && (
      <p className="mb-2">
        <strong>Remaining Blocks:</strong>{" "}
        {remainingBlocks > 0 ? remainingBlocks : `Was Ready to be opened ${-remainingBlocks} blocks ago!`}
      </p>
    )}
  </div>
);

const Pack: NextPage = () => {
  const router = useRouter();
  const { tokenId } = router.query;
  const { address } = useAccount();
  const writeTx = useTransactor();
  const { data: walletClient } = useWalletClient();
  const { packData, isOpened, ownerAddr, error } = usePack(tokenId);
  const { data: blockNumber } = useBlockNumber();
  const [remainingBlocks, setRemainingBlocks] = useState<number | null>(null);
  const [targetBlockNumber, setTargetBlockNumber] = useState<bigint>();
  const [opening, setOpening] = useState<boolean>(false);
  const [opened, setOpened] = useState<boolean>(false);
  const [loading, setLoading] = useState<boolean>(true);

  const { data: packsContract } = useScaffoldContract({
    contractName: "OnchainMechaPacks",
    walletClient,
  });


  useScaffoldEventSubscriber({
    contractName: "OnchainMecha",
    eventName: "Transfer",
    listener: ({ from, to, tokenId }: any) => {
      return console.log("Onchainmecha", from, to, tokenId);
    },
  });

  useEffect(() => {
    if (packData && blockNumber !== undefined) {
      const blocksRemaining = Number(packData[0]) - Number(blockNumber);
      setRemainingBlocks(blocksRemaining);
      setTargetBlockNumber(packData[0]);
      setLoading(false);
    }
  }, [packData, blockNumber]);

  const handleOpenPack = async () => {
    if (!address || !tokenId) return;

    const tx = await openPack(
      targetBlockNumber!,
      packsContract,
      writeTx,
      tokenId as unknown as bigint,
      setOpened,
      setOpening,
    );

    console.log(tx, opened, opening);
  };

  useEffect(() => {
    console.log("Opened state changed", opened);
    if (opened) {
      router.push("/gallery");
    }
  }, [opened, router]);

  if (error) {
    return (
      <GalleryLayout title={`Pack | Onchain Mecha`} description={`Pack details for token ${tokenId}`}>
        <div className="flex flex-col items-center justify-center min-h-screen py-8">
          <p className="text-red-500">Error: {error}</p>
        </div>
      </GalleryLayout>
    );
  }

  return (
    <GalleryLayout title={`Pack | Onchain Mecha`} description={`Pack details for token ${tokenId}`}>
      <div className="flex flex-col items-center justify-center min-h-screen py-8 px-4 sm:px-0">
        {loading ? (
          <span className="loading loading-spinner bg-red-700 loading-lg"></span>
        ) : (
          <>
            <div className="relative mt-60 w-96 h-96">
              <Image src={placeholder} alt={`Pack ${tokenId}`} width={100} height={100} className="w-full h-full" />
              {address && address.toLowerCase() == ownerAddr?.toLowerCase() && (
                <button
                  className="btn btn-ghost w-[70%] absolute h-fit top-20 left-14 p-0 default:bg-transparent hover:bg-transparent"
                  onClick={handleOpenPack}
                  disabled={opening}
                >
                  <Openpack />
                </button>
              )}
            </div>
            <PackDetails
              ownerAddr={ownerAddr}
              isOpened={isOpened}
              packData={packData}
              blockNumber={blockNumber}
              remainingBlocks={remainingBlocks}
            />
          </>
        )}
      </div>
    </GalleryLayout>
  );
};

export default Pack;
