import { useEffect, useState } from "react";
import Slideshow from "./story/Slideshow";
import { AnimatePresence } from "framer-motion";

const Landing = () => {
  const [totalWidth, setTotalWidth] = useState(0);

  useEffect(() => {
    if (typeof window !== "undefined") {
      setTotalWidth(window.innerWidth);
    }
  }, []);

  return (
    <section id="landing" className="flex h-full w-full overflow-hidden">
      <AnimatePresence>
        <Slideshow />
      </AnimatePresence>
    </section>
  );
};

export default Landing;
