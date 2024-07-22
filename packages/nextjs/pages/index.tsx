import { motion } from "framer-motion";
import { NextPage } from "next";
import { MetaHeader } from "~~/components/MetaHeader";
import HomeComponent from "~~/components/mecha/Home";

const Home: NextPage = () => {
  return (
    <>
      <MetaHeader />
      <main className="flex bg-[#54C5ED] w-full p-0 m-0 my-auto justify-center items-center h-screen overflow-hidden">
        <motion.div
          // initial={{ scale: 1.2 }}
          // animate={{ scale: 1 }}
          // transition={{ duration: 0.5 }}
          // className="top-0  bottom-0"
        >
          <HomeComponent />
        </motion.div>
      </main>
    </>
  );
};

export default Home;
