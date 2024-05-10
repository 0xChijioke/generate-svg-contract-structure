import Link from "next/link";
import type { NextPage } from "next";
import { MetaHeader } from "~~/components/MetaHeader";
import MintPage from "./mint";
import Landing from "~~/components/Landing";

const Home: NextPage = () => {
  return (
    <>
      <MetaHeader />
      <main className="flex items-center flex-col bg-black overflow-hidden">
        <Landing />
        {/* <MintPage /> */}
      </main>
    </>
  );
};

export default Home;
