import { useEffect, useRef, useState } from 'react';
import { AnimatePresence, motion, useAnimation, useScroll } from 'framer-motion';
import { Footer } from './Footer';
import Head from './Head';
import Squid from './Squid';
import BadGuy from './BadGuy';
import { fadeIn, footerVariants, staggerContainer } from '~~/utils/motion'
import Gunner from './Gunner';
import useScreen from '~~/hooks/scaffold-eth/useScreen';
import Samurai from './Samurai';
import Japanese from './Japanese';
import Connect from './Connect';
import MidSection from './MidSection';
import MechaOnChain from './MechaOnChain';
import BlackMatter from './BlackMatter';
import MintSection from './MintSection';
import ScrollText from './ScrollText';


const BREAKPOINT = 5000;
// breakpoint for showing/hiding the MintSection
const MINT_SECTION_BREAKPOINT = 2250;



const Landing = () => {

  const [animationStart, setAnimationStart] = useState(0);
  const [animationEnd, setAnimationEnd] = useState(-40);
  const [isAnimating, setIsAnimating] = useState(false);

  const { 
    screenWidth, 
    screenHeight: sh, 
    scrollY, 
    scrollPosition, 
    scrollSpeed: sSpeed 
  } = useScreen();
  const navControls = useAnimation();
  const badGuyControls = useAnimation();
  const japaneseControls = useAnimation();
  const squidControls = useAnimation();
  const gunnerControls = useAnimation();
  const samuraiControls = useAnimation();
  const footerControls = useAnimation();
  const mechaOnChainControls = useAnimation();



  useEffect(() => {
    const opacity = calculateOpacity(scrollPosition);

    badGuyControls.start({ opacity, transition: { duration: 0.5 } });
  }, [scrollPosition, badGuyControls]);

  // Function to calculate opacity based on scroll position
  const calculateOpacity = (scrollPosition: number) => {
    // Calculate opacity based on linear interpolation
    const minScroll = 198;
    const maxScroll = 3000;
    const minOpacity = 0;
    const maxOpacity = 1;

    // Ensure scroll position is within range
    if (scrollPosition <= minScroll) {
      return minOpacity;
    } else if (scrollPosition >= maxScroll) {
      return maxOpacity;
    }

    // Linear interpolation formula
    const opacity = (scrollPosition - minScroll) / (maxScroll - minScroll) * (maxOpacity - minOpacity) + minOpacity;
    return opacity;
  };













  useEffect(() => {
    // Define movement range
    const moveInStart = 2704;
    const moveOutEnd = 8316;
  
    // Calculate movement based on scroll position
    let moveY = 0;
    if (scrollPosition >= moveInStart && scrollPosition <= moveOutEnd) {
      moveY = -(scrollPosition - moveInStart);
    } else if (scrollPosition < moveInStart) {
      moveY = 0; 
    }
  
    // Update position animations
    japaneseControls.start({ y: moveY, transition: { duration: 0.5 } });
  }, [scrollPosition, japaneseControls]);
  




// Control Squid and Gunner animations based on scroll position
// useEffect(() => {
//   const startScale = 1;
//   const endScale = 2; 
//   const startOpacity = 1;
//   const endOpacity = 0; 
//   const threshold = 3300;

//   if (scrollPosition >= threshold) {
//     const scrollDiff = scrollPosition - threshold;
//     const scale = Math.min(endScale, startScale + scrollDiff * 0.001); 
//     const opacity = Math.max(endOpacity, startOpacity - scrollDiff * 0.001);

//     // Apply animations with spring transition
//     squidControls.start({ scale, opacity, transition: { type: 'spring', stiffness: 100, damping: 10 } });
//     gunnerControls.start({ scale, opacity, transition: { type: 'spring', stiffness: 100, damping: 10 } });
//   } else {
//     // Reset animations if scroll position is before the threshold
//     squidControls.start({ scale: startScale, opacity: startOpacity, transition: { duration: 0 } });
//     gunnerControls.start({ scale: startScale, opacity: startOpacity, transition: { duration: 0 } });
//   }
// }, [scrollPosition, squidControls, gunnerControls]);
useEffect(() => {
  const moveInEndSquidGunner = 3300;
  const moveOutStartSquidGunner = 4000;
  const maxScale = 6; // Maximum scale value
  const maxHorizontalDistance = 100; // Maximum horizontal distance for separation
  const movementMagnitude = 2; // Magnitude of movement

  let scaleSquidGunner = 1;
  let opacitySquidGunner = 1;
  let squidX = 0;
  let gunnerX = 0;

  if (scrollPosition >= moveInEndSquidGunner && scrollPosition <= moveOutStartSquidGunner) {
    // Calculate scale based on scroll position, scaling from 1 to maxScale
    const scrollRange = moveOutStartSquidGunner - moveInEndSquidGunner;
    const scrollDistance = scrollPosition - moveInEndSquidGunner;
    const scaleRatio = Math.min(scrollDistance / scrollRange, 1); // Ensure ratio is capped at 1
    scaleSquidGunner = 1 + scaleRatio * (maxScale - 1); // Scaling between 1 and maxScale
    opacitySquidGunner = 1; // Ensure opacity is fully visible while scaling up

    // Calculate horizontal positions based on scale
    const maxHorizontalShift = maxHorizontalDistance * (maxScale - 1);
    squidX = -maxHorizontalShift * scaleRatio * movementMagnitude; // Move Squid towards the left
    gunnerX = maxHorizontalShift * scaleRatio * movementMagnitude; // Move Gunner towards the right
  } else if (scrollPosition < moveInEndSquidGunner) {
    // Reset scale if scroll position is before moveInEndSquidGunner
    scaleSquidGunner = 1;
    opacitySquidGunner = 1; // Ensure opacity is fully visible
  } else {
    // Squid and Gunner disappear when scroll position exceeds moveOutStartSquidGunner
    scaleSquidGunner = maxScale;
    opacitySquidGunner = 0; // Set opacity to 0 when Squid and Gunner disappear
  }
  
  // Update Squid and Gunner animations
  squidControls.start({ scale: scaleSquidGunner, opacity: opacitySquidGunner, x: squidX, transition: { duration: 0.5 } });
  gunnerControls.start({ scale: scaleSquidGunner, opacity: opacitySquidGunner, x: gunnerX, transition: { duration: 0.5 } });
}, [scrollPosition, squidControls, gunnerControls]);








  useEffect(() => {
    const moveOutStart = 3168;
    const moveOutEnd = 3564;
    
    // Calculate movement based on scroll position
    if (scrollPosition >= moveOutStart && scrollPosition <= moveOutEnd) {
      const navMoveY = -(scrollPosition - moveOutStart);
      navControls.start({ y: navMoveY, transition: { duration: 0.5 } });
      
      const samuraiMoveY = (scrollPosition - moveOutStart);
      const footerMoveY = (scrollPosition - moveOutStart);
      footerControls.start({ y: footerMoveY, transition: { duration: 0.5 } });

      let samuraiOpacity = 1;

      if (scrollPosition >= 3300) {
        samuraiOpacity = 0;
      } else if (scrollPosition < 3300) {
        samuraiOpacity = 1;
      }
      samuraiControls.start({  opacity: samuraiOpacity, y: samuraiMoveY, transition: { duration: 0.5 } });
    } else if (scrollPosition < moveOutStart) {
      navControls.start({ y: 0, transition: { duration: 0.5 } });
      footerControls.start({ y: 0, transition: { duration: 0.5 } });
      samuraiControls.start({ y: 0, transition: { duration: 0.5 } });
    }
  }, [scrollPosition, navControls, footerControls, samuraiControls]);



  const fadeInOnScroll = fadeIn('up', 'tween', 0.5, 1);

  useEffect(() => {
    if (scrollPosition < BREAKPOINT) {
      window.scrollTo({ top: window.innerHeight, behavior: 'smooth' });
    }
  }, [scrollPosition]);


  const controls = useAnimation();

  useEffect(() => {
    const scrollText = async () => {
      await controls.start({ y: -5000 }, { duration: 60, ease: "linear", repeat: Infinity });
    };
    scrollText();
  }, [controls]);
  

  const blackMatterRef = useRef(null);

            











  return (
    <section id="landing">
      {scrollPosition < BREAKPOINT && (
        <div className="relative w-screen min-h-screen overflow-hidden bg-[#FF585C]">
          {/* Navbar Section */}
          <motion.div
            className="absolute h-[23%]  top-0 p-0 left-0 w-full border-b-8 border-black bg-sky-400 flex justify-center items-end"
          animate={navControls}
          >
            <motion.div
              className="absolute w-[50%] top-30 left-2"
              animate={japaneseControls}
            >
              <MechaOnChain />
            </motion.div>
            <div className="w-[84%]">
              <Head />
            </div>
            <div className="absolute w-[20%] top-[22%] right-[21.5%]">
              <Connect />
            </div>
          </motion.div>


          {/* Section */}
          <motion.div
            className="absolute bottom-0 left-0 w-full h-[77%]"
          >

            
            <motion.div 
              className='absolute w-[29%] inset-0'
              animate={badGuyControls}
              initial={{ opacity: 0 }}
              style={{ left: '48.5%', top: '43%', transform: 'translate(-50%, -50%)' }}
            >
              <BadGuy />
            </motion.div>

            <motion.div
              className='absolute w-[62%] z-20 bottom-0 right-0'
              animate={gunnerControls}
            >
              <Gunner />
            </motion.div>

            <motion.div
              className='absolute z-10 bottom-0 left-[5%] w-[70%]'
              animate={squidControls}
            >
              <Squid />
            </motion.div>

            <motion.div className="absolute z-10 w-[21%] top-10 left-10" animate={japaneseControls}>
              <Japanese />
            </motion.div>


            <motion.div className="absolute w-[30%] bottom-0 left-0" animate={samuraiControls}>
              <Samurai />
            </motion.div>
          </motion.div>


          {/* Footer */}
          <motion.div className='w-full absolute bottom-0' animate={footerControls}>
            <Footer />
          </motion.div>
        </div>

      )}

        {scrollPosition >= BREAKPOINT && scrollPosition < 7500 && (
          <motion.div
            className='w-screen h-screen relative overflow overflow-hidden'
            // initial={{ opacity: 0, y: -100 }}
            // whileInView={{ opacity: 1, y: 0 }}
            // viewport={{ once: false, amount: 0.24 }}
            // transition={{ duration: 8, ease: "linear" }}
            ref={blackMatterRef}
          >
            <BlackMatter />
        
            <motion.div
              className="absolute top-[10%] flex justify-center w-full"
              initial={{ opacity: 0, y: 100 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ duration: 0.8, delay: 1 }} 
            >
              <ScrollText scrollPosition={scrollPosition} />
            </motion.div>
          </motion.div>
        )}


        <AnimatePresence>
          {scrollPosition > 7500 && (
            <motion.div
              variants={footerVariants}
              className="absolute w-screen h-screen top-0 left-0 overflow-hidden"
              initial={{ opacity: 0, x: 1000 }}
              whileInView={{ opacity: 1, x: 0 }}
              viewport={{ once: false, amount: 0.24 }}
              transition={{ duration: 0.1, }}
            >
              <MintSection />
            </motion.div>
          )}
        </AnimatePresence>
    </section>
  );
};

export default Landing;
