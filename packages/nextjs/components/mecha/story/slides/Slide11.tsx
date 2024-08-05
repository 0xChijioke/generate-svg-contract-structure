import Image from "next/image";
import { slide11, text11 } from "../images";

const Slide11 = () => (
  <div className="flex relative w-screen h-screen bg-white p-4 lg:p-8">
    <div
      className="w-full h-full overflow-hidden bg-no-repeat bg-cover bg-center"
      style={{ backgroundImage: slide11 }}
    ></div>

    <div className="absolute object-contain w-[92%] lg:w-auto top-[26%] lg:top-[38%] right-[5%] md:right-[10%] transform -translate-y-1/2">
      <Image src={text11} alt="Text 4" width={600} height={200} />
    </div>
  </div>
);

export default Slide11;
