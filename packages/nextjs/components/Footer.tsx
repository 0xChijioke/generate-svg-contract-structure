import dynamic from "next/dynamic";
import { useRouter } from "next/router";
import { motion } from "framer-motion";
import { footerImage } from "./mecha/base64Elements";
import { useScaffoldContractRead } from "~~/hooks/scaffold-eth";
import GotoMint from "./mecha/buttons/GotoMint";

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
      {router.pathname.startsWith("/gallery") && (
        <div className="fixed bottom-1 lg:bottom-0 md:w-[20%] w-[20%] lg:w-[8%] right-2">
          <Panda />
        </div>
      )}
      {isHome && 
        <motion.div 
          className="w-full -mt-3 lg:-mt-5 lg:p-8 flex justify-center"
          initial={{ y: 100, opacity: 0 }}
          whileInView={{ y: 0, opacity: 1 }}
          transition={{ duration: 0.5, type: "spring", stiffness: 100 }}
          >
          <GotoMint className="lg:w-72 w-48" onClick={() => router.push("/mint")} />
        </motion.div>
      }
      <div className="text-center fixed -bottom-5 lg:-bottom-4 pl-2 w-full text-neutral-200 font-semibold text-base">
        {akuShardsFound !== undefined ? (
          <p>{Number(akuShardsFound)} / 7 Aku cards</p>
        ) : (
          <p></p>
        )}
      </div>
    </div>
  );
};
