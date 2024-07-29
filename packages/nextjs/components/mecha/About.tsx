import BE from "./about/BE";
import Birdy from "./about/Birdy";
import Boulda from "./about/Boulda";
import Fewal from "./about/Fewal";
import Gunner from "./about/Gunner";
import Loogie from "./about/Loogie";
import Samurai from "./about/Samurai";
import Squido from "./about/Squido";
import { aboutAku } from "./base64Elements";


const About = () => (
  <div className="bg-cover relative z-10 w-full h-full bg-center" style={{ backgroundImage: aboutAku }}>

    <div className="lg:w-[30%] md:w-[40%] w-[50%] h-[50%] absolute left-0 top-[20%]">
      <Fewal />
    </div>
    <div className="lg:w-[30%] md:w-[40%] w-[50%] h-[50%] absolute -bottom-[20%] lg:left-[10%]">
      <Birdy />
    </div>
    <div className="lg:w-[20%] w-[50%] md:w-[40%] h-[50%] absolute bottom-4 left-0">
      <BE />
    </div>
    <div className="lg:w-[30%] w-[70%] md:w-[40%] h-[50%] absolute bottom-0 md:-bottom-[10%] lg:bottom-[10%] lg:right-[16%] -right-20">
      <Gunner />
    </div>
    <div className="lg:w-[40%] w-[70%] h-[50%] absolute top-[10%] lg:top-auto -right-8">
      <Boulda />
    </div>
    <div className="lg:w-[40%] w-[70%] md:w-[40%] h-[50%] absolute top-[20%] md:top-[30%] lg:top-[20%] -right-8">
      <Samurai />
    </div>
    <div className="md:w-[10%] w-[30%] items-center content-center h-[50%] absolute -bottom-[10%] right-2 md:right-[30%] lg:right-[40%]">
      <Loogie />
    </div>
    <div className="lg:w-[34%] w-[90%] md:w-[40%] items-center content-center h-[50%] absolute -bottom-10 md:-bottom-[10%] lg:bottom-0 left-[10%] md:left-[28%]">
      <Squido />
    </div>
  </div>
);
export default About;
