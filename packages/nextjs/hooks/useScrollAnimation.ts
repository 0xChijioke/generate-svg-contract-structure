import { useEffect } from "react";
import { AnimationControls, useAnimation } from "framer-motion";
import { throttle } from "lodash";

interface ScrollAnimationConfig {
  start: number;
  end: number;
  animations: (progress: number) => object;
}

const useScrollAnimation = (scrollPosition: number, config: ScrollAnimationConfig): AnimationControls => {
  const controls = useAnimation();

  useEffect(() => {
    const handleScroll = throttle(async () => {
      const { start, end, animations } = config;

      if (scrollPosition >= start && scrollPosition <= end) {
        const progress = (scrollPosition - start) / (end - start);
        const animationValues = animations(progress);
        await controls.start({
          ...animationValues,
          transition: { duration: 1, ease: [0.25, 0.1, 0.25, 1] },
        });
      } else if (scrollPosition < start) {
        await controls.start({
          ...animations(0),
          transition: { duration: 1, ease: [0.25, 0.1, 0.25, 1] },
        });
      } else {
        await controls.start({
          ...animations(1),
          transition: { duration: 0, ease: [0.25, 0.1, 0.25, 1] },
        });
      }
    }, 100); // Adjust throttle delay

    handleScroll();
    return () => handleScroll.cancel();
  }, [scrollPosition, controls, config]);

  return controls;
};

export default useScrollAnimation;
