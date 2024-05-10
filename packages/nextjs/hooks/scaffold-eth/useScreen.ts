// useScreen.ts
import { useEffect, useState } from 'react';

interface Screen {
  screenWidth: number;
  screenHeight: number;
  scrollY: number;
  scrollSpeed: number;
  scrollPosition: number;
  totalTimeElapsed: number;
}

const useScreen = (): Screen => {
  const isClient = typeof window === 'object'; 
  const [screenDimensions, setScreenDimensions] = useState<Screen>({
    screenWidth: isClient ? window.innerWidth : 0,
    screenHeight: isClient ? window.innerHeight : 0,
    scrollY: isClient ? window.scrollY : 0,
    scrollSpeed: 0,
    scrollPosition: 0,
    totalTimeElapsed: 0,
  });

  useEffect(() => {
    if (!isClient) {
      return;
    }

    const handleResize = () => {
      setScreenDimensions({
        screenWidth: window.innerWidth,
        screenHeight: window.innerHeight,
        scrollY: window.scrollY,
        scrollSpeed: screenDimensions.scrollSpeed,
        scrollPosition: screenDimensions.scrollPosition,
        totalTimeElapsed: screenDimensions.totalTimeElapsed,
      });
    };

    const handleScroll = () => {
      setScreenDimensions((prevDimensions) => ({
        ...prevDimensions,
        scrollY: window.scrollY,
      }));
    };


    // Variables to keep track of scroll behavior
    let totalDeltaY = 0;
    let totalTimeElapsed = 0;
    let lastTimeStamp: number | null = null;


    const handleWheel = (event: WheelEvent) => {
        const deltaY = event.deltaY;
        const currentTimeStamp = event.timeStamp;
        if (lastTimeStamp !== null) {
            const timeDifference = currentTimeStamp - lastTimeStamp;
    
            totalDeltaY += deltaY;
            totalTimeElapsed += timeDifference;
    
            // Calculate scroll speed (pixels per millisecond)
            const scrollSpeed = deltaY / timeDifference;
            const scrollPosition = totalDeltaY;
    
            // Log or use the calculated values as needed
            console.log('Scroll Speed:', scrollSpeed);
            console.log('Scroll Position:', scrollPosition);
            console.log('Total Time Elapsed:', totalTimeElapsed);

            setScreenDimensions((prevDimensions) => ({
                ...prevDimensions,
                scrollSpeed,
                scrollPosition,
                totalTimeElapsed,
              }));
        }
    
        // Update lastTimeStamp
        lastTimeStamp = currentTimeStamp;
      };


    window.addEventListener('resize', handleResize);
    window.addEventListener('scroll', handleScroll);
    window.addEventListener('wheel', handleWheel);

    return () => {
      window.removeEventListener('resize', handleResize);
      window.removeEventListener('scroll', handleScroll);
      window.removeEventListener('wheel', handleWheel);
    };
  }, [isClient]);

  return screenDimensions;
};

export default useScreen;
