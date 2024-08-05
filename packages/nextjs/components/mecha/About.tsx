import dynamic from "next/dynamic";
import { aboutAku } from "./base64Elements";

const BE = dynamic(() => import("./about/BE"), { ssr: false });
const Birdy = dynamic(() => import("./about/Birdy"), { ssr: false });
const Boulda = dynamic(() => import("./about/Boulda"), { ssr: false });
const Fewal = dynamic(() => import("./about/Fewal"), { ssr: false });
const Gunner = dynamic(() => import("./about/Gunner"), { ssr: false });
const Loogie = dynamic(() => import("./about/Loogie"), { ssr: false });
const Samurai = dynamic(() => import("./about/Samurai"), { ssr: false });
const Squido = dynamic(() => import("./about/Squido"), { ssr: false });

const About = () => (
  <div className="bg-cover relative z-10 w-full h-full bg-center" style={{ backgroundImage: aboutAku }}>
    <div className="lg:w-[30%] md:w-[40%] w-[40%] h-[50%] absolute left-0 top-[12%]">
      <Fewal />
    </div>
    <div className="lg:w-[30%] md:w-[40%] w-[40%] h-[50%] absolute -bottom-[20%] lg:left-[10%]">
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
    <div className="md:w-[10%] w-[30%] items-center content-center h-[50%] absolute -bottom-[18%] right-2 md:right-[30%] lg:right-[40%]">
      <Loogie />
    </div>
    <div className="lg:w-[34%] w-[80%] md:w-[40%] items-center content-center h-[50%] absolute -bottom-[15%] md:-bottom-[10%] lg:bottom-0 left-[10%] md:left-[28%]">
      <Squido />
    </div>
  </div>
);
export default About;
