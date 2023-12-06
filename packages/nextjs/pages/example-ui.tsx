import { useState } from "react";
import Image from "next/image";
import { Contract, InterfaceAbi, JsonRpcProvider } from "ethers";
import type { NextPage } from "next";
import { MetaHeader } from "~~/components/MetaHeader";
import { useDeployedContractInfo } from "~~/hooks/scaffold-eth";
import { getTargetNetwork } from "~~/utils/scaffold-eth";

const chain = getTargetNetwork();
const provider = new JsonRpcProvider(chain.rpcUrls.public.http[0]);

const ExampleUI: NextPage = () => {
  const [svg, setSvg] = useState("");
  const { data: layerMasterData } = useDeployedContractInfo("LayerMaster");
  const [tokenId, setTokenId] = useState(0);

  const readLMContract = async (params: number[]) => {
    const { address: contractAddress, abi: contractAbi } = layerMasterData as { address: string; abi: InterfaceAbi };
    const contract = new Contract(contractAddress, contractAbi, provider);
    const result = await contract.renderMain(params, true);
    console.log(result);
    JSON.parse(atob(result));
    const json = JSON.parse(Buffer.from(result, "base64").toString());
    console.log(json);
    setSvg(json?.image);
    return result;
  };

  const getSVG = async () => {
    //1, 5, 9, 13, 17, 21, 25, 29
    const result = await readLMContract([0, 4, 8, 12, 16, 20, 24, 28]);
    // Convert to base64
    const svgBase64 = `data:image/svg+xml;base64,${btoa(result as string)}`;
    console.log(svgBase64);
    setSvg(svgBase64);
  };

  const { data: onchainMechData } = useDeployedContractInfo("OnchainMechs");

  const getOnchainMech = async (tokenId: number) => {
    const { address: contractAddress, abi: contractAbi } = onchainMechData as { address: string; abi: InterfaceAbi };
    const contract = new Contract(contractAddress, contractAbi, provider);
    const result = await contract.tokenURI(tokenId);
    console.log(result);
    const str = Buffer.from(result.replace("data:application/json;base64,", ""), "base64").toString();
    console.log(str);
    const json = JSON.parse(str);
    console.log(json);
    setSvg(json?.image);
    return result;
  };

  const getTokenId = async () => {
    const result = await getOnchainMech(tokenId);
    console.log(result);
  };

  return (
    <>
      <MetaHeader
        title="Example UI | Scaffold-ETH 2"
        description="Example UI created with 🏗 Scaffold-ETH 2, showcasing some of its features."
      >
        {/* We are importing the font this way to lighten the size of SE2. */}
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link href="https://fonts.googleapis.com/css2?family=Bai+Jamjuree&display=swap" rel="stylesheet" />
      </MetaHeader>
      <div className="grid lg:grid-cols-2 flex-grow" data-theme="exampleUi">
        <button
          className="btn btn-primary rounded-full capitalize font-normal font-white w-24 flex items-center gap-1 hover:gap-2 transition-all tracking-widest"
          onClick={getSVG}
        >
          Click here to load image!
        </button>
        {svg && <Image alt="svg" src={svg} width={500} height={500} />}
        <input
          onChange={e => {
            const value = Number(e.currentTarget.value);
            setTokenId(value);
          }}
        ></input>
        <button
          className="btn btn-primary rounded-full capitalize font-normal font-white w-24 flex items-center gap-1 hover:gap-2 transition-all tracking-widest"
          onClick={getTokenId}
        >
          Get Mech
        </button>
      </div>
    </>
  );
};

export default ExampleUI;
