
import Image from "next/image";
import { text5 } from "../images";
import { backgroundStarGreen } from "./backgroundStar";
import { mechaGroup1, mechaGroup2, mechaGroup3, mechaGroup4 } from "./characters";
import Loogie from "../../about/Loogie";


const Slide5 = () => (
    <div className="flex relative w-screen h-screen bg-white p-4 lg:p-8">

        <div className="w-full h-full bg-[#7ED3F1] overflow-hidden bg-no-repeat bg-center bg-cover" style={{ backgroundImage: backgroundStarGreen }}>
            <div className="absolute lg:w-[50%] w-full h-[40%] -top-[14%] lg:h-[60%] lg:top-auto lg:bottom-0 -left-[40%] lg:left-auto lg:right-[10%]">
                <Image
                    src={mechaGroup4}
                    alt="Fewal"
                    fill

                />
            </div>
            <div className="absolute w-full h-full -bottom-[20%] lg:bottom-auto lg:w-[50%] lg:h-[120%] lg:right-auto -right-10 lg:-left-[10%] lg:-top-[20%]">
                <Image
                    src={mechaGroup2}
                    alt="Samurai and Squido"
                    fill

                />
            </div>
            <div className="absolute w-[200%] lg:w-full lg:h-full h-[120%] -top-[2%] lg:top-0 -left-[68%] lg:-left-0">
                <Image
                    src={mechaGroup1}
                    alt="Birdy and BE"
                    fill

                />
            </div>
            <div className="absolute w-[70%] lg:w-[34%] h-full -top-[20%] lg:top-auto right-0">
                <Image
                    src={mechaGroup3}
                    alt="Gunner and Boulda"
                    fill

                />
            </div>
            {/* <div className="absolute w-[80%] lg:w-[40%] h-[40%] lg:h-[44%] bottom-0 left-8 lg:left-[34%]">
                <Image
                    src={}
                    alt="SYD and Fifi"
                    fill

                />
            </div> */}

        </div>
      
      <div className="absolute object-contain w-[80%] lg:w-auto top-[26%] lg:top-[38%] right-[14%] md:right-[30%] transform -translate-y-1/2">
        <Image src={text5} alt="Text 4" width={450} height={200} />
      </div>
    </div>
  );

export default Slide5;