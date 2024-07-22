import Aku from "./homeElements/Aku";
import Gunner from "./homeElements/Gunner";
import MechaKanji from "./homeElements/MechaKanji";
import OnchainKanji from "./homeElements/OnchainKanji";
import Samurai from "./homeElements/Samurai";
import Squido from "./homeElements/Squido";

const Home = () => (
  <div className="relative w-screen" style={{ height: "100vh" }}>
    <div className="absolute inset-0 flex items-center justify-center">
      <Aku />
    </div>

    <div className="relative flex h-full w-full items-center justify-center">
      <div className="absolute lg:left-[16%] md:left-[8%] lg:top-[30%] md:top-[40%] top-[22%] flex items-center justify-center w-[40%] md:w-[20%]">
        <OnchainKanji />
      </div>
      <div className="absolute lg:right-[15%] md:right-[8%] flex items-center lg:top-[30%] md:top-[40%] top-[60%] justify-center w-[50%] md:w-[23%]">
        <MechaKanji />
      </div>
      <div className="absolute lg:left-[14%] md:-left-[30%] md:-top-[2%] lg:w-[42%] w-[90%] lg:bottom-[2%] lg:top-auto -left-24 top-[12%]">
        <Samurai />
      </div>
      <div className="left-0 w-auto lg:w-[34%] md:w-[50%] md:bottom-[1%] lg:top-40 absolute bottom-[10%]">
        <Squido />
      </div>
      <div className="bottom-20 sm:bottom-0 lg:bottom-0 w-[90%] md:w-[70%] right-0 absolute lg:w-[40%]">
        <Gunner />
      </div>
    </div>
  </div>
);
export default Home;
