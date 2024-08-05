import Image from "next/image";
import { slide3, text3 } from "../images";

const Slide3 = () => (
  <div className="flex relative w-screen h-screen">
    <Image src={slide3} alt="Slide 1" fill className="object-cover" />
    <div className="absolute w-[98%] lg:w-auto right-[2%] bottom-[8%] md:right-[37%]">
      <Image src={text3} alt="Text 3" width={600} height={200} />
    </div>
  </div>
);

export default Slide3;
