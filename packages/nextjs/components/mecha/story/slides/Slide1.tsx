import Image from "next/image";
import { slide1, text1 } from "../images";

const Slide1 = () => (
  <div className="flex relative w-screen h-screen">
    <Image src={slide1} alt="Slide 1" fill className="object-contain" />
    <div className="absolute object-contain top-auto w-[80%] lg:w-auto lg:top-[30%] bottom-0 right-[10%] lg:bottom-auto md:right-[10%] transform -translate-y-1/2">
      <Image src={text1} alt="Text 1" width={450} height={200} />
    </div>
  </div>
);

export default Slide1;
