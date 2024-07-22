import dynamic from "next/dynamic";
import type { NextPage } from "next";
import { MetaHeader } from "~~/components/MetaHeader";
import MintComponent from "~~/components/mecha/MintComponent";
import { mintImage } from "~~/components/mecha/base64Elements";
import Badluck from "~~/components/mecha/mintElements.tsx/Badluck";
import Goodluck from "~~/components/mecha/mintElements.tsx/Goodluck";

const MintPage: NextPage = () => {
  return (
    <>
      <MetaHeader title="Mint | Onchain Mecha" description="Open pack and mint" />
      <div
        className="flex w-[100vw] h-[100vh] bg-[#68BB9D] bg-center bg-cover items-center justify-center relative"
        style={{ backgroundImage: mintImage }}
      >
        <div className="relative w-full h-full">
          <div className="absolute w-[50%] md:w-auto left-0 top-[20%]">
            <Goodluck />
                    </div>
          <div className="absolute right-0 w-[50%] md:w-auto bottom-[10%]">
            <Badluck />
        </div>
        </div>
        <MintComponent />
      </div>
    </>
  );
};

export default MintPage;
