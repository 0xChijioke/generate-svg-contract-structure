import Image from "next/image";
import { slide2, text2 } from "../images";

const Slide2 = () => (
  <div className="flex relative w-screen h-screen">
    <Image src={slide2} alt="Slide 1" fill className="object-cover" />
    <div className="absolute object-contain w-[80%] lg:w-auto top-[25%] lg:top-auto right-[10%] lg:bottom-[0%] md:right-[4%] transform -translate-y-1/2">
      <Image src={text2} alt="Text 2" width={450} height={200} />
    </div>
  </div>
);

export default Slide2;
