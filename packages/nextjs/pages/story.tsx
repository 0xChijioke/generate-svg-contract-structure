import React from "react";
import { motion } from "framer-motion";
import { NextPage } from "next";
import { MetaHeader } from "~~/components/MetaHeader";
import Landing from "~~/components/mecha/Landing";

const Story: NextPage = () => {
  return (
    <>
      <MetaHeader title="Story | Mecha" />
      <motion.div className="w-full h-full overflow-hidden">
        <Landing />
      </motion.div>
    </>
  );
};

export default Story;
