
import Image from "next/image";
import { slide10, text10 } from "../images";
import { mechaScatter } from "./characters";



const Slide10 = () => (
    <div className="flex relative w-screen h-screen bg-white p-4 lg:p-8">

        <div className="w-full h-full overflow-hidden bg-no-repeat bg-cover bg-center" style={{ backgroundImage: slide10 }}>
            
            <div className="w-full h-full bg-cover bg-center bg-no-repeat" style={{ backgroundImage: mechaScatter }} />

        </div>
      
      <div className="absolute object-contain w-[80%] lg:w-auto top-[26%] lg:top-[38%] right-[14%] md:left-[10%] transform -translate-y-1/2">
        <Image src={text10} alt="Text 4" width={600} height={200} />
      </div>
    </div>
  );

export default Slide10;