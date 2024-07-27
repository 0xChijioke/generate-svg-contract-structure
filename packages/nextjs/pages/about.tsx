import React from "react";
import dynamic from "next/dynamic";
import { motion } from "framer-motion";
import { NextPage } from "next";
import { MetaHeader } from "~~/components/MetaHeader";

const About = dynamic(() => import("~~/components/mecha/About"), { ssr: false });
const HowTo = dynamic(() => import("~~/components/mecha/HowTo"), { ssr: false });

const AboutPage: NextPage = () => {
  return (
    <>
      <MetaHeader
        title="About | Mecha"
        // description=""
      />
      <section className="w-full h-full overflow-x-clip overflow-hidden">
        <motion.div className="w-screen h-screen">
          <About />
        </motion.div>
        <motion.div
          initial={{ opacity: 0, x: 100 }}
          animate={{ opacity: 1, x: 0 }}
          transition={{ duration: 0.5, ease: "easeInOut", delay: 1.5 }}
          className="absolute w-[80%] lg:w-[55%] z-10 left-[10%] lg:left-[20%] top-[40%] lg:top-[24%]"
        >
          <HowTo />
        </motion.div>
      </section>
    </>
  );
};

export default AboutPage;
