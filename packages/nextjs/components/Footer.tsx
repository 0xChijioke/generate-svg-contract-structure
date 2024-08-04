import dynamic from "next/dynamic";
import { useRouter } from "next/router";
import { footerImage } from "./mecha/base64Elements";

// import Fifi from "./mecha/home/Fifi";

const Panda = dynamic(() => import("./mecha/gallery/Panda"), { ssr: false });

/**
 * Site footer
 */
export const Footer = () => {
  const router = useRouter();
  const isHome = router.pathname === "/";
  const isStory = router.pathname === "/story";

  return (
    <div
      className="fixed bottom-0 z-10 w-full h-24 bg-center bg-cover"
      style={{
        backgroundImage: isStory ? "none" : footerImage,
        backgroundColor: isStory ? "transparent" : "initial",
        backgroundRepeat: "no-repeat",
      }}
    >
      {isHome && <div className="fixed bottom-0 md:hidden left-4 w-[40%]">{/* <Fifi /> */}</div>}
      {router.pathname.startsWith("/gallery") && (
        <div className="fixed bottom-4 lg:bottom-0 md:w-[20%] w-[30%] lg:w-[10%] right-2">
          <Panda />
        </div>
      )}
    </div>
  );
};
