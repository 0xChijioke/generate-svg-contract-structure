import { useState } from "react";
import { slides } from "./slides";
import { motion } from "framer-motion";

const Slideshow = () => {
  const [currentSlide, setCurrentSlide] = useState(0);

  const nextSlide = () => {
    setCurrentSlide(prev => (prev + 1) % slides.length);
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
      <button onClick={prevSlide} className="absolute z-10 left-0 lg:left-5 transform w-20 lg:-translate-y-1/2 p-3">
        <svg
          xmlns="http://www.w3.org/2000/svg"
          fill="none"
          viewBox="0 0 24 24"
          strokeWidth={1.5}
          stroke="currentColor"
          className="size-6"
        >
          <path strokeLinecap="round" strokeLinejoin="round" d="M15.75 19.5 8.25 12l7.5-7.5" />
        </svg>
      </button>
      <button onClick={nextSlide} className="absolute z-10 right-0 lg:right-5 w-20 transform lg:-translate-y-1/2 p-3">
        <svg
          xmlns="http://www.w3.org/2000/svg"
          fill="none"
          viewBox="0 0 24 24"
          strokeWidth={1.5}
          stroke="currentColor"
          className="size-6"
        >
          <path strokeLinecap="round" strokeLinejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
        </svg>
      </button>
    </div>
  );
};

export default Slideshow;
