import { FC, useEffect } from "react";
import dynamic from "next/dynamic";
import Image from "next/image";
import Link from "next/link";
import { useRouter } from "next/router";
import { useAccount } from "wagmi";
import { useTokenContext } from "~~/context/TokenContext";
import { placeholder } from "~~/public/assets/placeholder";

const MintButton = dynamic(() => import("~~/components/mecha/buttons/MintButton"), { ssr: false });

const GalleryComponent: FC = () => {
  const { address, isConnected } = useAccount();
  const { tokenIds, userBalance, svgData, fetchMoreTokenIds, isFetchingNextPage, hasNextPage, status } =
    useTokenContext();

  const router = useRouter();

  useEffect(() => {
    if (router.pathname === "/gallery") {
      fetchMoreTokenIds();
    }
  }, [router.pathname]);

  if (!isConnected || !address) {
    return (
      <div className="fixed inset-0 flex justify-center items-center bg-opacity-80 text-white">
        <span>Please connect your wallet to access the gallery.</span>
      </div>
    );
  }

  if (status === "loading") {
    return (
      <div className="fixed inset-0 flex justify-center z-10 items-center bg-opacity-80 text-white">
        <span className="loading loading-spinner loading-lg"></span>
      </div>
    );
  }

  if (userBalance === "0" && !tokenIds.length) {
    return (
      <div className="flex z-10 flex-col justify-center space-y-3 min-h-screen items-center text-white">
        <span>You have no cards yet. Go mint your first pack!</span>
        <Link href="/mint">
          <MintButton />
        </Link>
      </div>
    );
  }

  return (
    <section className="w-full flex justify-center flex-col py-60">
      <div className="fixed top-[24%] opacity-60 md:opacity-auto z-10 lg:top-[20%] font-bold text-xl left-4">
        {userBalance} Cards
      </div>
      <div className="grid lg:grid-cols-3 lg:w-[80%] mx-auto items-center pb-4 min-h-full grid-cols-1 gap-y-4">
        {tokenIds &&
          tokenIds.map((tokenId: any) => (
            <Link href={{ pathname: `/gallery/card/${tokenId}` }} key={tokenId}>
              <div className="flex justify-center rounded-xl w-fit lg:w-[80%] shadow-lg p-2 m-auto h-auto transform transition-transform duration-300 hover:scale-105">
                {svgData[tokenId] ? (
                  <>
                    <Image
                      alt={`NFT ${tokenId}`}
                      src={svgData[tokenId]}
                      blurDataURL={placeholder}
                      className="rounded-xl"
                      width={400}
                      height={600}
                      placeholder="blur"
                    />
                  </>
                ) : (
                  <div className="w-96 h-96 bg-slate-100 opacity-25 animate-pulse rounded-xl"></div>
                )}
              </div>
            </Link>
          ))}
      </div>
      {hasNextPage && (
        <div className="flex z-10 mb-20 justify-center p-0 m-0">
          <button
            onClick={() => fetchMoreTokenIds()}
            className={`px-6 py-3 items-center ${
              isFetchingNextPage
                ? ""
                : "btn text-white rounded-lg btn-secondary shadow-md focus:outline-none focus:ring-2 focus:ring-gray-600 focus:ring-opacity-50"
            }`}
            disabled={isFetchingNextPage}
          >
            {isFetchingNextPage ? <span className="loading loading-spinner bg-red-700 loading-lg"></span> : "Load More"}
          </button>
        </div>
      )}
    </section>
  );
};

export default GalleryComponent;
