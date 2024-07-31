import dynamic from "next/dynamic";
import Image from "next/image";
import { text12 } from "../images";
import { motion, spring } from "framer-motion";

const About = dynamic(() => import("~~/components/mecha/About"), { ssr: false });

const Slide12 = () => (
  <div className="flex relative w-screen h-screen bg-white p-4 lg:p-8">
    <div className="w-full h-full overflow-hidden z-1 bg-[#3C3C3C]">
      <About />
    </div>

    <motion.div
      initial={{ scale: 0.8, y: 10 }}
      animate={{ scale: 1, y: 0 }}
      transition={{ duration: 0.5, ease: "easeIn", stiffness: 100, type: "spring" }}
      className="absolute object-contain w-[88%] lg:w-auto z-10 bottom-10 lg:bottom-[10%] right-[8%] md:right-[30%] transform -translate-y-1/2"
    >
      <Image src={text12} alt="Text 4" width={700} height={200} />
    </motion.div>
  </div>
);

export default Slide12;
