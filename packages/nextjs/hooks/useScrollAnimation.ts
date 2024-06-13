// hooks/useScrollAnimation.ts
import { useEffect } from 'react';
import { AnimationControls, useAnimation } from 'framer-motion';
import { throttle } from 'lodash';

interface ScrollAnimationConfig {
  start: number;
  end: number;
  animations: (progress: number) => object;
}

const useScrollAnimation = (scrollPosition: number, config: ScrollAnimationConfig): AnimationControls => {
  const controls = useAnimation();

  useEffect(() => {
    const handleScroll = throttle(() => {
      const { start, end, animations } = config;

      if (scrollPosition >= start && scrollPosition <= end) {
        const progress = (scrollPosition - start) / (end - start);
        const animationValues = animations(progress);
        controls.start(animationValues);
      } else if (scrollPosition < start) {
        controls.start(animations(0));
      } else {
        controls.start(animations(1));
      }
    }, 100);

    handleScroll();
    return () => handleScroll.cancel();
  }, [scrollPosition, controls, config]);

  return controls;
};

export default useScrollAnimation;
