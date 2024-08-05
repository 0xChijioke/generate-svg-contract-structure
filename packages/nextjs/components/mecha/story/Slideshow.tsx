import { useState } from "react";
import router from "next/router";
import { slides } from "./slides";
import { motion } from "framer-motion";
import { ChevronLeftIcon, ChevronRightIcon } from "@heroicons/react/24/outline";

const Slideshow = () => {
  const [currentSlide, setCurrentSlide] = useState(0);

  const nextSlide = () => {
    if (currentSlide === slides.length - 1) {
      router.push("/mint");
    } else {
      setCurrentSlide(prev => (prev + 1) % slides.length);
    }
  };

  const prevSlide = () => {
    setCurrentSlide(prev => (prev - 1 + slides.length) % slides.length);
  };

  const slideVariants = {
    initial: { opacity: 0 },
    animate: { opacity: 1 },
    exit: { opacity: 0 },
  };

  return (
    <div className="w-full h-full flex items-center justify-center overflow-hidden">
      <motion.div
        key={currentSlide}
        variants={slideVariants}
        initial="initial"
        whileInView="animate"
        exit="exit"
        transition={{ duration: 0.5 }}
      >
        {slides[currentSlide]}
      </motion.div>
      <button onClick={prevSlide} className="absolute z-10 left-0 lg:left-5 transform translate-y-3/4 w-20 lg:-translate-y-1/2 lg:p-3">
        <ChevronLeftIcon />
      </button>
      <button onClick={nextSlide} className="absolute z-10 right-0 lg:right-5 w-20 transform translate-y-3/4 lg:-translate-y-1/2 lg:p-3">
        <ChevronRightIcon />
      </button>
    </div>
  );
};

export default Slideshow;
