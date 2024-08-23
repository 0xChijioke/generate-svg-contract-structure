import { FC, useEffect } from "react";
import dynamic from "next/dynamic";
import { useRouter } from "next/router";
import { useMintPack } from "~~/hooks/useMintPack";

const MintButton = dynamic(() => import("~~/components/mecha/buttons/MintButton"), { ssr: false });

const MintComponent: FC = () => {
  const router = useRouter();

  const { minting, writeAsync, isError, isSuccess, tokenId } = useMintPack();

  const mintPack = async () => {
    await writeAsync();
  };

  useEffect(() => {
    if (isSuccess && tokenId) {
      router.push(`/gallery/pack/${tokenId}`);
    }
  }, [isSuccess, tokenId, router]);

  return (
    <>
      <div className="absolute top-[42%]">
        <div className="flex flex-col w-full h-full justify-center items-center">
          <div className="w-full h-4 text-center">
            {minting && <p className="animate-pulse">Minting in progress...</p>}
            {isSuccess && <p className="animate-pulse">Pack minted! Redirecting... </p>}
            {isError && <p>An error occurred. Please try again.</p>}
          </div>
          <button
            disabled={minting}
            className="btn btn-ghost focus:bg-transparent active:bg-transperent p-0 m-0 items-center mx-auto mt-10 hover:bg-transparent"
          >
            <MintButton onClick={mintPack} />
          </button>
          <div className="w-full h-fit pt-4 text-center">Mint price: 0.0007777777 ETH</div>
        </div>
      </div>
    </>
  );
};

export default MintComponent;
