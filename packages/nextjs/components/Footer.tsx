import { footerImage } from "./mecha/base64Elements";
import Panda from "./mecha/gallery/Panda";
import { useRouter } from "next/router";
import Fifi from "./mecha/homeElements/Fifi";

/**
 * Site footer
 */
export const Footer = () => {
  const router = useRouter();
  // Check if the current route is exactly the home route
  const isHome = router.pathname === '/';
  return (
    <div
      className="fixed bottom-0 z-10 w-full h-24 bg-center bg-cover"
      style={{ backgroundImage: footerImage, backgroundRepeat: "no-repeat" }}
    >
      {isHome && (
        <div className="fixed bottom-0 md:hidden left-4 w-[40%]">
          <Fifi />
              </div>
            )}
      {router.pathname.startsWith("/gallery") && (
        <div className="fixed bottom-4 lg:bottom-0 md:w-[20%] w-[30%] lg:w-[10%] right-2">
          <Panda />
        </div>
      )}
    </div>
  );
};
