import React from "react";
import dynamic from "next/dynamic";
import { JsonRpcProvider } from "ethers";
import { NextPage } from "next";
import CardDetails from "~~/components/mecha/CardDetails";
import { getTokenDetails } from "~~/helpers/getTokenDetails";
import { getTargetNetwork } from "~~/utils/scaffold-eth";

const GalleryLayout = dynamic(() => import("~~/components/mecha/gallery/GalleryLayout"), { ssr: false });

const chain = getTargetNetwork();
const provider = new JsonRpcProvider(chain.rpcUrls.public.http[0]);

interface CardProps {
  tokenId: string;
  mintDate: string;
  mechaType: string;
  tokenMetadata: any;
  // doomsdayStatus: boolean;
}

const Card: NextPage<CardProps> = props => {
  const { tokenMetadata, mechaType, tokenId } = props;

  return (
    <GalleryLayout title={`Card | Onchain Mecha`} description={`Pack details for token ${tokenId}`}>
      <div className="flex w-full pt-10 min-h-screen">
        <div className="z-10">
          <CardDetails tokenId={tokenId} mechaType={mechaType} tokenMetadata={tokenMetadata} />
        </div>
      </div>
    </GalleryLayout>
  );
};

export async function getServerSideProps(context: any) {
  const { tokenId } = context.params;
  const { tokenMetadata, mechaType }: any = await getTokenDetails(tokenId, provider);

  return {
    props: {
      tokenId,
      mechaType,
      tokenMetadata,
    },
  };
}

export default Card;
