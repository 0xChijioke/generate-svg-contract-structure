import { FC } from "react";
import Image from "next/image";
import { Address } from "../../scaffold-eth";
import WarpcastIcon from "../buttons/WarpcastIcon";
import { SocialIcon } from "react-social-icons";
import { useDeployedContractInfo } from "~~/hooks/scaffold-eth";
import { placeholder } from "~~/public/assets/placeholder";
import { getShareUrl } from "~~/utils/scaffold-eth/share";

interface CardDetailsProps {
  tokenId: string;
  mechaType: string;
  tokenMetadata: any;
}

const CardDetails: FC<CardDetailsProps> = props => {
  const { data: onchainMechaData } = useDeployedContractInfo("OnchainMecha");

  const shareUrl = window.location.href;
  const platforms = [
    { name: "X", url: getShareUrl("x", props.tokenMetadata.name, shareUrl) },
    { name: "Telegram", url: getShareUrl("telegram", props.tokenMetadata.name, shareUrl) },
    { name: "LinkedIn", url: getShareUrl("linkedin", props.tokenMetadata.name, shareUrl) },
    { name: "Warpcast", url: getShareUrl("warpcast", props.tokenMetadata.name, shareUrl) },
  ];

  const viewPlatforms = [
    {
      name: "OpenSea",
      url: `https://opensea.io/assets/base/${onchainMechaData?.address}/${props.tokenId}`,
    },
  ];

  // console.log(props.tokenMetadata)
  const handleIconClick = (event: React.MouseEvent, url: string) => {
    event.preventDefault();
    window.open(url, "_blank");
  };
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
        <p className="mb-2">{props.tokenMetadata.name}</p>
        <p className="mb-2">{props.tokenMetadata.description}</p>
        <p className="mb-2">{props.tokenMetadata.attributes[0].value} card</p>
        <div className="mb-2 flex gap-x-2 whitespace-nowrap">
          Owner <Address address={props.tokenMetadata.owner} />
        </div>
        <div className="flex flex-col">
          <p className="">Share on:</p>
          <div className="gap-x-4 flex">
            {platforms.map(platform => (
              <a key={platform.name} href={platform.url} onClick={event => handleIconClick(event, platform.url)}>
                {platform.name === "Warpcast" ? (
                  <WarpcastIcon width={40} height={40} />
                ) : (
                  <SocialIcon network={platform.name.toLowerCase()} style={{ height: 40, width: 40 }} />
                )}
              </a>
            ))}
          </div>
        </div>
        <div className="flex flex-col">
          <p>View on</p>
          <div className="flex gap-x-4">
            {viewPlatforms.map(platform => (
              <a key={platform.name} href={platform.url} onClick={event => handleIconClick(event, platform.url)}>
                <SocialIcon network={platform.name.toLowerCase()} style={{ height: 40, width: 40 }} />
              </a>
            ))}
          </div>
        </div>
      </div>
    </div>
  );
};

export default CardDetails;
