import Image from "next/image";
import { slide4, text4 } from "../images";
import { backgroundStar } from "./backgroundStar";
import { betty, kuro, sydNfifi, tsuNham, tweetyNbuba } from "./characters";

const Slide4 = () => (
  <div className="flex relative w-screen h-screen bg-white p-4 lg:p-8">
    <div
      className="w-full h-full bg-[#1D9A6C] bg-no-repeat bg-center bg-cover"
      style={{ backgroundImage: backgroundStar }}
    >
      <div className="absolute lg:w-[20%] w-[40%] h-[20%] top-0 lg:h-[18%] lg:top-[10%] left-[10%] lg:left-[30%]">
        <Image src={kuro} alt="Kuro" fill />
      </div>
      <div className="absolute w-[40%] lg:w-[20%] h-[55%] top-[24%] lg:left-[10%]">
        <Image src={tsuNham} alt="Tsu and Ham" fill />
      </div>
      <div className="absolute w-[60%] lg:w-[34%] h-[50%] lg:h-[40%] top-[20%] right-[10%] lg:right-[24%]">
        <Image src={tweetyNbuba} alt="Tweety and Buba" fill />
      </div>
      <div className="absolute w-[34%] lg:w-[24%] h-[24%] bottom-[28%] lg:bottom-auto lg:top-[35%] right-[4%]">
        <Image src={betty} alt="Betty" fill />
      </div>
      <div className="absolute w-[80%] lg:w-[40%] h-[40%] lg:h-[44%] bottom-0 left-8 lg:left-[34%]">
        <Image src={sydNfifi} alt="SYD and Fifi" fill />
      </div>
    </div>

    <div className="absolute object-contain w-[80%] lg:w-auto top-[24%] right-[10%] md:right-[2%] transform -translate-y-1/2">
      <Image src={text4} alt="Text 4" width={450} height={200} />
    </div>
  </div>
);

export default Slide4;
