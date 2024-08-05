import Image from "next/image";
import { slide9, text9 } from "../images";
import { dynamicLines } from "./backgroundStar";
import { siloette } from "./characters";

const Slide9 = () => (
  <div className="flex relative w-screen h-screen bg-white p-4 lg:p-8">
    <div className="w-full h-full overflow-hidden bg-no-repeat bg-cover bg-center" style={{ backgroundImage: slide9 }}>
      <div className="absolute w-full h-full top-[30%] lg:top-auto">
        <Image src={siloette} alt="siloette" fill />
      </div>

      <div className="w-full h-full bg-cover bg-center bg-no-repeat" style={{ backgroundImage: dynamicLines }} />
    </div>

    <div className="absolute object-contain w-[92%] lg:w-auto top-[26%] lg:top-[38%] right-[5%] md:left-[10%] transform -translate-y-1/2">
      <Image src={text9} alt="Text 4" width={600} height={200} />
    </div>
  </div>
);

export default Slide9;
