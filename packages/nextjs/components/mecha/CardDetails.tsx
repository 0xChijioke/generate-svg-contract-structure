import { FC } from "react";
import Image from "next/image";
import { Address } from "../scaffold-eth";
import { placeholder } from "~~/public/assets/placeholder";

interface CardDetailsProps {
  tokenId: string;
  mechaType: string;
  tokenMetadata: any;
}

const CardDetails: FC<CardDetailsProps> = props => {
  return (
    <div className="flex justify-center flex-col lg:pt-[8%] h-fit my-[15%] lg:my-0 lg:flex-row items-center w-full lg:max-h-screen">
      <div className="pt-20 px-10 items-center">
        <h1 className="text-2xl font-bold mb-4">
          Card Details for Token: {props.tokenId.slice(0, 4)}...{props.tokenId.slice(-4)}
        </h1>
        <div className="flex lg:w-[50%] lg:h-[50%]">
          <Image
            alt={`NFT ${props.tokenId}`}
            src={props.tokenMetadata.image}
            className="rounded-xl"
            width={800}
            blurDataURL={placeholder}
            height={800}
            placeholder={"blur"}
          />
        </div>
      </div>
      <div className="flex flex-col gap-y-4 mb-8 p-8 text-xl space-y-2">
        <p className="mb-2">
          Name: {props.tokenMetadata.name.slice(0, 24)}...{props.tokenId.slice(-4)}
        </p>
        <p className="mb-2">
          Description: {props.tokenMetadata.description.slice(0, 32)}...{props.tokenId.slice(-4)}
        </p>
        <p className="mb-2">Mecha Type: {props.mechaType}</p>
        <p className="mb-2">Rarity: {props.tokenMetadata.attributes[0].value}</p>
        <div className="mb-2 flex space-x-2 whitespace-nowrap">
          <strong>Owner :</strong> <Address address={props.tokenMetadata.owner} />
        </div>
      </div>
    </div>
  );
};

export default CardDetails;
