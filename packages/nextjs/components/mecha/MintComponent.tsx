import { FC, useEffect } from "react";
import { useRouter } from "next/router";
import { useMintPack } from "~~/hooks/useMintPack";
import MintButton from "~~/components/mecha/buttons/MintButton";

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
  }, [tokenId]);

  return (
    <>
      <div className="absolute top-[42%]">
        <div className="flex flex-col w-full h-full justify-center items-center">
          <div className="w-full h-20 text-center">
            {minting && !isSuccess && !isError && <p className="animate-pulse text-lg font-bold">Minting in progress...</p>}
            {isSuccess && <p className="animate-pulse text-lg font-bold">Pack minted! Redirecting... </p>}
            {isError && <p>An error occurred. Please try again.</p>}
          </div>
          <button
            disabled={minting || isSuccess}
            className="btn btn-ghost focus:bg-transparent active:bg-transperent p-0 m-0 items-center mx-auto mt-10 hover:bg-transparent"
          >
            <MintButton onClick={mintPack} />
          </button>
          <div className="w-full h-fit pt-4 text-center text-lg font-bold">0.000777 Ξ</div>
        </div>
      </div>
    </>
  );
};

export default MintComponent;
