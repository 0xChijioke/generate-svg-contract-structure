import React from "react";
import { NextPage } from "next";
import { MetaHeader } from "~~/components/MetaHeader";
import Landing from "~~/components/mecha/Landing";

const Story: NextPage = () => {
  return (
    <>
      <MetaHeader title="Story | Mecha" />
      <div className="w-full h-full overflow-hidden">
        <Landing />
      </div>
    </>
  );
};

export default Story;
