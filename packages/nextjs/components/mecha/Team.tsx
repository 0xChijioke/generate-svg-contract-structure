import dynamic from "next/dynamic";
import Image from "next/image";
import { teamImage } from "./base64Elements";
import StarBurst from "./team/StarBurst";
import { BottomKanji, Chijioke, Dan, Elliot, TopKanji } from "./team/TeamElements";

const Team = () => {
  return (
    <div
      className="flex justify-center w-full h-full py-auto bg-blend-darken bg-center"
      style={{ backgroundImage: teamImage }}
    >
      {/* <StarBurst className="flex justify-center items-center" /> */}
      <div className="absolute space-y-20 lg:space-y-auto top-[28%] md:top-[30%] justify-center lg:gap-x-[20%] w-[50%] md:w-[34%] lg:w-[70%] lg:flex h-[90%] lg:h-full lg:top-[10%]">
        <TopKanji />
        <BottomKanji />
      </div>

      <div className="absolute w-[55%] md:w-[40%] left-0 lg:left-auto my-[28%] md:my-[20%] lg:pt-40 lg:my-[3%] h-[60%] lg:h-full lg:w-[30%]">
        <Image alt="Dan" fill src={Dan} />
      </div>
      <div className="absolute lg:right-0 -right-8 top-[14%] lg:top-auto w-[65%] lg:my-[3%] h-full lg:w-[30%]">
        <Image alt="Elliot" fill src={Elliot} />
      </div>
      <div className="absolute md:-bottom-[30%] -left-[10%] -bottom-60 lg:bottom-auto lg:left-0 h-full lg:my-[3%] w-[70%] md:w-[56%] lg:w-[35%]">
        <Image alt="Chijioke" fill src={Chijioke} />
      </div>
    </div>
  );
};

export default Team;
