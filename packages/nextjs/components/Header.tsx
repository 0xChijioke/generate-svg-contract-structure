import React, { useCallback, useRef, useState } from "react";
import dynamic from "next/dynamic";
import { useRouter } from "next/router";
import { headerImage } from "./mecha/base64Elements";
import { RainbowKitCustomConnectButton } from "./scaffold-eth";
import { motion } from "framer-motion";
import { useOutsideClick } from "~~/hooks/scaffold-eth";

const Hamburger = dynamic(() => import("./mecha/menu/Hamburger"), { ssr: false });
const MechaLogo = dynamic(() => import("./mecha/MechaLogo"), { ssr: false });
const Menu = dynamic(() => import("./mecha/menu/Menu"), { ssr: false });
const Fifi = dynamic(() => import("./mecha/home/Fifi"), { ssr: false });

export const Header = () => {
  const router = useRouter();
  const [isDrawerOpen, setIsDrawerOpen] = useState(false);
  const burgerMenuRef = useRef(null);
  useOutsideClick(
    burgerMenuRef,
    useCallback(() => setIsDrawerOpen(false), []),
  );
  const isStory = router.pathname === "/story";
  const isHome = router.pathname === "/";

  return (
    <div
      className={`fixed flex z-20 justify-end w-full h-44 bg-right bg-cover ${
        isStory ? "bg-transparent justify-end" : " md:justify-between"
      }`}
      style={{ backgroundImage: isStory ? "none" : headerImage, backgroundRepeat: "no-repeat" }}
    >
      {!isStory && (
        <div className={`md:flex pl-2 hidden md:pl-8 xl:space-x-24 w-[42%] ${!isHome ? "xl:w-[48%]" : "xl:w-[60%]"} `}>
          <MechaLogo />
          <div className="hidden xl:flex">{isHome && <Fifi />}</div>
        </div>
      )}
      <div className="relative" ref={burgerMenuRef}>
        <div className="flex pt-20 md:pt-14">
          {!isStory && <RainbowKitCustomConnectButton />}
          <motion.div
            onClick={() => setIsDrawerOpen(prevState => !prevState)}
            className="cursor-pointer w-16 mr-6 md:w-24"
            initial={false}
            animate={isDrawerOpen ? { rotate: 180, color: "#FF5722" } : { rotate: 0, color: "#000" }}
            transition={{ duration: 0.5, ease: "easeInOut" }}
          >
            <Hamburger />
          </motion.div>
        </div>
        <motion.div
          initial={{ rotateX: -90 }}
          animate={isDrawerOpen ? { rotateX: 0 } : { rotateX: -90 }}
          exit={{ rotateX: -90 }}
          transition={{ duration: 0.5, ease: "easeInOut" }}
          className="absolute lg:right-[10%] right-1 mt-4 h-[3%] lg:h-[4%] w-48 lg:w-60"
          style={{ transformOrigin: "top" }}
        >
          {isDrawerOpen && (
            <div onClick={() => setIsDrawerOpen(false)}>
              <Menu />
            </div>
          )}
        </motion.div>
      </div>
    </div>
  );
};
