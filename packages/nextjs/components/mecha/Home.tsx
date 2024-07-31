import dynamic from "next/dynamic";
import Image from "next/image";
import { aku } from "./base64Elements";
import { motion } from "framer-motion";

const Gunner = dynamic(() => import("./home/Gunner"), { ssr: false });
const MechaKanji = dynamic(() => import("./home/MechaKanji"), { ssr: false });
const OnchainKanji = dynamic(() => import("./home/OnchainKanji"), { ssr: false });
const Samurai = dynamic(() => import("./home/Samurai"), { ssr: false });
const Squido = dynamic(() => import("./home/Squido"), { ssr: false });

const Home = () => (
  <div className="relative w-screen" style={{ height: "100vh" }}>
    <div className="absolute -inset-[20%] md:inset-0 flex items-center justify-center">
      <Image fill alt="Aku" src={aku} />
    </div>

    <div className="relative flex h-full w-full items-center justify-center">
      <motion.div
        className="absolute lg:left-[16%] md:left-[8%] lg:top-[30%] md:top-[40%] top-[22%] flex items-center justify-center w-[40%] md:w-[20%]"
        initial={{ y: -100, opacity: 0 }}
        whileInView={{ y: 0, opacity: 1 }}
        transition={{ duration: 0.5, type: "spring", stiffness: 100 }}
      >
        <OnchainKanji />
      </motion.div>
      <motion.div
        className="absolute lg:right-[15%] md:right-[8%] flex items-center lg:top-[30%] md:top-[40%] top-[60%] justify-center w-[50%] md:w-[23%]"
        initial={{ y: 100, opacity: 0 }}
        whileInView={{ y: 0, opacity: 1 }}
        transition={{ duration: 0.5, type: "spring", stiffness: 100 }}
      >
        <MechaKanji />
      </motion.div>
      <motion.div
        className="absolute lg:left-[14%] md:-left-[30%] md:-top-[2%] lg:w-[42%] w-[90%] lg:bottom-[2%] lg:top-auto -left-24 top-[12%]"
        initial={{ y: -100, opacity: 0, scale: 0.7 }}
        whileInView={{ y: 0, opacity: 1, scale: 1 }}
        transition={{ duration: 0.5, ease: "easeIn" }}
      >
        <Samurai />
      </motion.div>
      <motion.div
        className="left-0 w-auto lg:w-[34%] md:w-[50%] md:bottom-[1%] lg:top-40 absolute bottom-[10%]"
        initial={{ x: -100, opacity: 0, scale: 0.7 }}
        whileInView={{ x: 0, opacity: 1, scale: 1 }}
        transition={{ duration: 0.5, ease: "easeIn" }}
      >
        <Squido />
      </motion.div>
      <motion.div
        className="bottom-20 sm:bottom-0 lg:bottom-0 w-[90%] md:w-[70%] right-0 absolute lg:w-[40%]"
        initial={{ x: 100, opacity: 0, scale: 0.7 }}
        whileInView={{ x: 0, opacity: 1, scale: 1 }}
        transition={{ duration: 0.5, ease: "easeIn" }}
      >
        <Gunner />
      </motion.div>
    </div>
  </div>
);
export default Home;
