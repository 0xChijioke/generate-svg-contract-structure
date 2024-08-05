import Image from "next/image";
import { text6 } from "../images";
import { slide6Image } from "./backgroundStar";
import { aku } from "./characters";

const Slide6 = () => (
  <div className="flex relative w-screen h-screen bg-white p-4 overflow-hidden lg:p-8">
    <div
      className="w-full h-full bg-[#7ED3F1] overflow-hidden bg-no-repeat bg-center bg-cover"
      style={{ backgroundImage: slide6Image }}
    >
      <div className="w-full h-full bg-[#AB0307B5] opacity-90" />
      <div className="absolute lg:w-full w-[150%] overflow-hidden h-full top-0 -left-[30%] lg:left-auto">
        <Image src={aku} alt="Fewal" fill />
      </div>
    </div>

    <div className="absolute object-contain w-[92%] lg:w-full top-[26%] lg:top-[30%] right-[5%] md:left-[4%] transform -translate-y-1/2">
      <Image src={text6} alt="Text 4" width={600} height={200} />
    </div>
  </div>
);

export default Slide6;
