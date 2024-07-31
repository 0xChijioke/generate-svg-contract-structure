
import Image from "next/image";
import { slide7, text7 } from "../images";



const Slide7 = () => (
    <div className="flex relative w-screen h-screen bg-white p-4 overflow-hidden lg:p-8">

        <div className="w-full h-full bg-[#7ED3F1] overflow-hidden bg-no-repeat bg-center bg bg-cover" style={{ backgroundImage: slide7 }} />
      
      <div className="absolute object-contain w-[90%] lg:w-full top-[26%] lg:top-[30%] md:left-[4%] transform -translate-y-1/2">
        <Image src={text7} alt="Text 4" width={600} height={200} />
      </div>
    </div>
  );

export default Slide7;