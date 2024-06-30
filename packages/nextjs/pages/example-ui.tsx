import { useScroll } from "framer-motion";
import CanvasComponent from "~~/components/mecha/Canvas";

const Landing = () => {
  const { scrollY } = useScroll();

  return (
    <section id="landing" className="h-[10000vh] w-screen overflow-y-scroll">
      <CanvasComponent scrollY={scrollY} />
    </section>
  );
};

export default Landing;
