import dynamic from "next/dynamic";
import { useRouter } from "next/router";
import { footerImage } from "./mecha/base64Elements";
import { useScaffoldContractRead } from "~~/hooks/scaffold-eth";

// import Fifi from "./mecha/home/Fifi";

const Panda = dynamic(() => import("./mecha/gallery/Panda"), { ssr: false });

/**
 * Site footer
 */
export const Footer = () => {
  const router = useRouter();
  const isHome = router.pathname === "/";
  const isStory = router.pathname === "/story";

  


  const { data: akuShardsFound } = useScaffoldContractRead({
    contractName: "OnchainMecha",
    functionName: "akuShardsFound"
  });


  return (
    <div
      className="fixed bottom-0 z-10 w-full h-[5%] lg:h-24 bg-center bg-cover"
      style={{
        backgroundImage: isStory ? "none" : footerImage,
        backgroundColor: isStory ? "transparent" : "initial",
        backgroundRepeat: "no-repeat",
      }}
    >
      {isHome && <div className="fixed bottom-0 md:hidden left-4 w-[40%]">{/* <Fifi /> */}</div>}
      {router.pathname.startsWith("/gallery") && (
        <div className="fixed bottom-1 lg:bottom-0 md:w-[20%] w-[20%] lg:w-[8%] right-2">
          <Panda />
        </div>
      )}
      <div className="text-white text-center font-semibold text-lg">
        {akuShardsFound !== undefined ? (
          <p>{Number(akuShardsFound)} / 7 Aku cards found!</p>
        ) : (
          <p></p>
        )}
      </div>
    </div>
  );
};
