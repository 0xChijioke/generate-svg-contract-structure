import { useEffect, useRef, useState } from 'react';
import { AnimatePresence, motion, useAnimation, useScroll } from 'framer-motion';
import useScrollAnimation from '~~/hooks/useScrollAnimation';
import { Footer } from './Footer';
import Head from './Head';
import Squid from './Squid';
import BadGuy from './BadGuy';
import Gunner from './Gunner';
import useScreen from '~~/hooks/scaffold-eth/useScreen';
import Samurai from './Samurai';
import Japanese from './Japanese';
import Connect from './Connect';
import MechaOnChain from './MechaOnChain';
import BlackMatter from './BlackMatter';
import MintSection from './MintSection';
import ScrollText from './ScrollText';


const BREAKPOINT = 5000;
// breakpoint for showing/hiding the MintSection
const MINT_SECTION_BREAKPOINT = 2250;



const Landing = () => {

  const { 
    screenWidth, 
    screenHeight: sh, 
    scrollY, 
    scrollPosition, 
    scrollSpeed: sSpeed 
  } = useScreen();



  const navControls = useScrollAnimation(scrollPosition, {
    start: 3168,
    end: 3564,
    animations: (progress: number) => ({
      y: -(progress * (3564 - 3168)),
      transition: { duration: 0.5 },
    }),
  });



  const badGuyControls = useScrollAnimation(scrollPosition, {
    start: 198,
    end: 3000,
    animations: (progress: number) => ({
      opacity: progress,
      transition: { duration: 0.5 },
    }),
  });


  

  const japaneseControls = useScrollAnimation(scrollPosition, {
    start: 2704,
    end: 8316,
    animations: (progress: number) => ({
      y: -progress * 2000,
      transition: { duration: 0.8 },
    }),
  });
  



  const squidControls = useScrollAnimation(scrollPosition, {
    start: 3400,
    end: 4000,
    animations: (progress: number) => ({
      scale: 1 + progress * 5,
      opacity: progress < 1 ? 1 : 0,
      x: -progress * 200,
      transition: { duration: 0.5 },
    }),
  });

  const gunnerControls = useScrollAnimation(scrollPosition, {
    start: 3400,
    end: 4000,
    animations: (progress: number) => ({
      scale: 1 + progress * 5,
      opacity: progress < 1 ? 1 : 0,
      x: progress * 200,
      transition: { duration: 0.5 },
    }),
  });



  const samuraiControls = useScrollAnimation(scrollPosition, {
    start: 3168,
    end: 3564,
    animations: (progress: number) => ({
      y: progress * 500,
      opacity: progress < 0.5 ? 1 : 0,
      transition: { duration: 0.5 },
    }),
  });


  const footerControls = useScrollAnimation(scrollPosition, {
    start: 3168,
    end: 3564,
    animations: (progress: number) => ({
      y: progress * 500,
      transition: { duration: 0.5 },
    }),
  });



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
