import React from "react";
import dynamic from "next/dynamic";
import { MetaHeader } from "~~/components/MetaHeader";

const TeamComponent = dynamic(() => import("~~/components/mecha/team/Team"), { ssr: false });

const Team = () => {
  return (
    <>
      <MetaHeader title="Team | Mecha" />
      <div className="w-full h-full lg:bottom-10 fixed">
        <TeamComponent />
      </div>
    </>
  );
};

export default Team;
