
import Image from "next/image";
import { slide8, text8 } from "../images";
import { dynamicLines } from "./backgroundStar";
import { spider1, spider2, spider3, spider4, spider5, spider6, spider7 } from "./characters";



const Slide8 = () => (
    <div className="flex relative w-screen h-screen bg-white p-4 lg:p-8">

        <div className="w-full h-full overflow-hidden bg-no-repeat bg-cover bg-center" style={{ backgroundImage: slide8 }}>
            <div className="absolute lg:w-[50%] w-full h-[40%] lg:h-[60%] lg:top-auto lg:bottom-0 -top-20 lg:left-[24%]">
                <Image
                    src={spider1}
                    alt="spider 1"
                    fill

                />
            </div>
            <div className="absolute w-[60%] lg:w-[50%] lg:h-[80%] h-[120%] -bottom-[40%] lg:top-0 lg:-left-0">
                <Image
                    src={spider3}
                    alt="spider 3"
                    fill

                />
            </div>
            <div className="absolute h-[30%] bottom-0 w-[50%] lg:h-[70%] right-0 lg:-left-[4%]">
                <Image
                    src={spider2}
                    alt="spider 2"
                    fill

                />
            </div>
            <div className="absolute w-[70%] lg:w-[34%] h-full lg:left-[22%] -bottom-[14%] -left-10 lg:-top-[20%]">
                <Image
                    src={spider4}
                    alt="spider 4"
                    fill

                />
            </div>
            <div className="absolute w-[80%] lg:w-[34%] h-full -top-[20%] lg:-top-20 -right-[10%] lg:right-0">
                <Image
                    src={spider6}
                    alt="spider 6"
                    fill

                />
            </div>
            <div className="absolute w-full lg:w-[55%] top-[20%] h-full lg:-top-[10%] lg:right-0">
                <Image
                    src={spider5}
                    alt="spider 5"
                    fill

                />
            </div>
            <div className="absolute w-[80%] lg:w-[30%] h-full -top-[10%] lg:top-auto lg:-bottom-[24%] left-0 lg:left-auto lg:right-10">
                <Image
                    src={spider7}
                    alt="spider 7"
                    fill

                />
            </div>
            <div className="w-full h-full bg-cover bg-center bg-no-repeat" style={{ backgroundImage: dynamicLines }} />

        </div>
      
      <div className="absolute object-contain w-[80%] lg:w-auto top-[26%] lg:top-[38%] right-[14%] md:left-[10%] transform -translate-y-1/2">
        <Image src={text8} alt="Text 4" width={600} height={200} />
      </div>
    </div>
  );

export default Slide8;