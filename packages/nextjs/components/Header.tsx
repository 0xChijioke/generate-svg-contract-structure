import React, { useCallback, useRef, useState } from "react";
import dynamic from "next/dynamic";
import Link from "next/link";
import { useRouter } from "next/router";
import { motion } from "framer-motion";
import { useOutsideClick } from "~~/hooks/scaffold-eth";

const Hamburger = dynamic(() => import("./mecha/menu/Hamburger"), { ssr: false });
const Menu = dynamic(() => import("./mecha/menu/Menu"), { ssr: false });

export const Header = () => {
  const [isDrawerOpen, setIsDrawerOpen] = useState(false);
  const burgerMenuRef = useRef(null);
  useOutsideClick(
    burgerMenuRef,
    useCallback(() => setIsDrawerOpen(false), []),
  );

  return (
    <div className="fixed top-0 right-0 z-20 p-10">
      <div className="relative" ref={burgerMenuRef}>
        <motion.div
          onClick={() => setIsDrawerOpen(prevState => !prevState)}
          className="cursor-pointer"
          initial={false}
          animate={isDrawerOpen ? { rotate: 180, color: "#FF5722" } : { rotate: 0, color: "#000" }}
          transition={{ duration: 0.5, ease: "easeInOut" }}
        >
          <Hamburger />
        </motion.div>
        <motion.div
          initial={{ rotateX: -90 }}
          animate={isDrawerOpen ? { rotateX: 0 } : { rotateX: -90 }}
          exit={{ rotateX: -90 }}
          transition={{ duration: 0.5, ease: "easeInOut" }}
          className="absolute right-[10%] mt-2 h-[4%] w-60"
          style={{ transformOrigin: "top" }}
        >
          {isDrawerOpen && (
            <div
            // onClick={() => setIsDrawerOpen(false)} TODO: should selecting an option close the menu
            >
              <Menu />
            </div>
          )}
        </motion.div>
      </div>
    </div>
  );
};
