import { motion } from "framer-motion";
import { NextPage } from "next";
import { MetaHeader } from "~~/components/MetaHeader";
import HomeComponent from "~~/components/mecha/Home";

const Home: NextPage = () => {
  return (
    <>
      <MetaHeader />
      <main className="w-[100vw] h-[100vh] overflow-hidden bg-sky-50">
        <motion.div
          initial={{ scale: 1.2 }}
          animate={{ scale: 1 }}
          transition={{ duration: 0.5 }}
          className="top-0 bottom-0 "
        >
          <HomeComponent />
        </motion.div>
      </main>
    </>
  );
};

export default Home;
