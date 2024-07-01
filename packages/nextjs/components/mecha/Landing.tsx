import { useEffect, useState } from "react";
import dynamic from "next/dynamic";
import Image from "next/image";
import { C1, C2, C3, C4, C5, C6, C7, C8 } from "./Characters";
import { text1, text2, text3, text4, text5, text6, text7, text8, text9 } from "./Story";
import { AnimatePresence, motion, useScroll, useTransform } from "framer-motion";
import { useRouter } from "next/router";

const AkuEntrance = dynamic(() => import("./AkuEntrance"), { ssr: false });
const MechFighters = dynamic(() => import("./MechFighters"), { ssr: false });
const ScatteredMechs = dynamic(() => import("./ScatteredMechs"), { ssr: false });
const AkuMech = dynamic(() => import("./AkuMech"), { ssr: false });
const FracturedAku = dynamic(() => import("./FracturedAku"), { ssr: false });
const Explosion = dynamic(() => import("./Explosion"), { ssr: false });
const Vortex = dynamic(() => import("./Vortex"), { ssr: false });

const Landing = () => {

  const router = useRouter();
  const { scrollY } = useScroll();
  const [isAkuZoomedOut, setIsAkuZoomedOut] = useState(false);
  const [totalWidth, setTotalWidth] = useState(0);
  const [isTransitionComplete, setIsTransitionComplete] = useState(false);
  const [isSlideInTriggered, setIsSlideInTriggered] = useState(false);
  const [isAkuMechVisible, setIsAkuMechVisible] = useState(false);
  const [isFracturedAkuVisible, setIsFracturedAkuVisible] = useState(false);
  const [isInVortexScene, setIsInVortexScene] = useState(false); // state for vortex scene detection

  useEffect(() => {
    if (typeof window !== "undefined") {
      setTotalWidth(window.innerWidth);
    }
  }, []);

  // Offset first scene transition
  const offset = 4000;
  // // Transformations for zooming out
  const scale = useTransform(scrollY, [0, offset], [70, 1]);
  const translateY = useTransform(scrollY, [0, offset], [75400, 0]);
  const translateX = useTransform(scrollY, [0, offset], [totalWidth * 2.4, 0]);

  // translation X values based on scroll position for face panning
  const translateXFaces = useTransform(scrollY, [5000, 8000], [-6000, 3000]);

  const akuMechDrop = useTransform(scrollY, [9000, 9800], [-1000, 0]);

  // Transformations for zooming into the explosion
  const explosionScale = useTransform(scrollY, [9800, 10000, 12000], [1, 30, 1]);
  const explosionOpacity = useTransform(scrollY, [9800, 10000], [0, 1]);

  // Transformations for the FracturedAku
  const fracturedAkuScale = useTransform(scrollY, [12500, 14000, 20000], [180, 1, -0]);
  const fracturedAkuOpacity = useTransform(scrollY, [12500, 12600], [0, 1]);
  const fracturedAkuY = useTransform(scrollY, [12500, 14000], [-totalWidth * 4.8, 0]);
  const fracturedAkuX = useTransform(scrollY, [12500, 14000], [900, 0]);

  // Transformations for ScatteredMechs
  const scatteredMechsScale = useTransform(scrollY, [14000, 20000, 30000], [180, 1, -0]);
  const scatteredMechsRotate = useTransform(scrollY, [20000, 30000], [0, 360 * 10]);

  // TextBox Transformations
  const textBox1Scale = useTransform(scrollY, [0, 4000], [1, 0.5]);
  const textBox2Scale = useTransform(scrollY, [2000, 5000], [0.5, 1]);

  const textBox4X = useTransform(scrollY, [4000, 6000], [100, 500]);

  useEffect(() => {
    const updateStateBasedOnScroll = (latest: number) => {
      setIsAkuZoomedOut(latest >= 4000);
      setIsTransitionComplete(latest >= 5400);
      setIsSlideInTriggered(latest >= 8000);
      setIsAkuMechVisible(latest >= 9000);
      setIsFracturedAkuVisible(latest >= 12500);
      setIsInVortexScene(latest >= 13000);
      if (latest >= 30000) {
        router.push("/mint");
      }
    };


    const unsubscribe = scrollY.onChange(updateStateBasedOnScroll);
    return () => unsubscribe();
  }, [scrollY]);

  const spring = {
    type: "spring",
    damping: 10,
    stiffness: 1000,
  };

  return (
    <section id="landing" className="h-[4000vh] w-screen overflow-y-scroll">
      <AnimatePresence>
        <motion.div
          initial={{ opacity: 0, y: 500 }}
          animate={{ opacity: 1, y: 50 }}
          key="textBox1"
          className="absolute top-60 right-80 h-auto z-10 transform-gpu"
          style={{
            scale: textBox1Scale,
            // y: textBox1Y,
            willChange: "transform",
          }}
        >
          <Image src={text1} className="w-80 z-10 h-80" width={40} height={40} alt="Text Box 1" />
        </motion.div>

        {!isAkuZoomedOut && (
          <motion.div
            key="akuEntrance"
            className="fixed top-0 w-screen h-auto transform-gpu"
            style={{
              scale: scale,
              y: translateY,
              x: translateX,
              willChange: "transform",
              imageRendering: "crisp-edges",
              backfaceVisibility: "hidden",
              // perspective: 100,
            }}
          >
            <AkuEntrance />
          </motion.div>
        )}
        {/* AkuEntrance scrolling down */}
        {isAkuZoomedOut && !isTransitionComplete && (
          <motion.div
            key="akuEntranceSecond"
            className="relative w-screen h-auto transform-gpu"
            // transition={spring}
            style={{
              top: offset,
              willChange: "transform",
              imageRendering: "auto",
            }}
          >
            <AkuEntrance />
            {scrollY.get() >= 3000 && (
              <>
                <motion.div
                  key="textBox2"
                  className="absolute top-[24%] right-[-28%] h-auto z-10 transform-gpu"
                  style={{
                    scale: textBox2Scale,
                    willChange: "transform",
                  }}
                >
                  <Image src={text2} width={100} height={100} className="w-[50%] z-10 h-80" alt="Text Box 2" />
                </motion.div>

                <motion.div
                  key="textBox3"
                  className="absolute top-[19.5%] right-[-2%] h-auto z-10 transform-gpu"
                  style={{
                    scale: textBox2Scale,
                    willChange: "transform",
                  }}
                >
                  <Image src={text3} className="w-[50%] z-10 h-80" width={40} height={40} alt="Text Box 3" />
                </motion.div>
              </>
            )}
          </motion.div>
        )}
        {/* Character Animation */}
        {isTransitionComplete && !isSlideInTriggered && (
          <motion.div
            key="characterAnimation"
            className="flex items-center justify-center"
            // transition={{ ease: [0.17, 0.67, 0.83, 0.67] }}
            style={{
              position: "fixed",
              top: "40vh",
              transform: "translateY(-50%)",
              x: translateXFaces,
              width: `${totalWidth * 2.5}px`,
              background: "black",
            }}
          >
            {/* TextBox 4 */}
            {
              <motion.div
                initial={{ opacity: 0.1 }}
                animate={{ opacity: 1 }}
                key="textBox4"
                className="absolute top-[-10%] right-[-60%] h-auto transform-gpu"
                style={{
                  x: textBox4X,
                  willChange: "transform",
                }}
              >
                <Image src={text4} className="w-[30%] z-10 h-80" width={40} height={40} alt="Text Box 4" />
              </motion.div>
            }

            {/* TextBox 5 */}
            {
              <motion.div
                initial={{ x: "10vw", opacity: 0 }}
                whileInView={{ x: -70, opacity: 1 }}
                viewport={{ once: false }}
                exit={{ x: -100, opacity: 0 }}
                key="textBox5"
                className="absolute top-[-20%] left-0 h-auto z-10 transform-gpu"
                style={{
                  willChange: "transform",
                }}
              >
                <Image src={text5} className="w-[30%] z-10 h-80" width={40} height={40} alt="Text Box 5" />
              </motion.div>
            }
            {[C8, C7, C6, C5, C4, C3, C2, C1].map((Character, index) => (
              <div
                key={index}
                style={{
                  width: `${totalWidth}px`,
                  display: "flex",
                  justifyContent: "center",
                  alignItems: "center",
                }}
              >
                <Character />
              </div>
            ))}
          </motion.div>
        )}
        {/* MechFighters Slide-in */}
        {isSlideInTriggered && !isFracturedAkuVisible && (
          <motion.div
            key="mechFighters"
            className="fixed top-0 w-[100vw] h-[100vh] bg-black"
            initial={{ opacity: 0, x: "5vw" }}
            animate={{ opacity: 1, x: 0 }}
            // exit={{ opacity: 0, x: "-5vw" }}
            transition={{ duration: 0.5, ease: "easeOut" }}
          >
            <MechFighters />
            <motion.div
              key="textBox6"
              className="fixed bottom-10 w-full flex justify-center items-center z-1"
              initial={{ opacity: 0, y: "100%" }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ duration: 1, delay: 0.5, ease: "easeInOut" }}
            >
              <Image src={text6} className="w-[50%] h-auto" width={200} height={200} alt="Text Box 6" />
            </motion.div>
            {isAkuMechVisible && (
              <motion.div
                className="absolute top-0 transform -translate-x-1/2"
                style={{
                  y: akuMechDrop,
                }}
              >
                <AkuMech />
                {/* TextBox 7 */}
                <motion.div
                  key="textBox7"
                  className="fixed top-0 w-full flex justify-center items-center z-50"
                  initial={{ opacity: 0, y: "-100%" }}
                  animate={{ opacity: 1, y: 80 }}
                  transition={{ duration: 1, delay: 1, ease: "easeInOut" }}
                >
                  <Image src={text7} className="w-[50%] h-auto" width={200} height={200} alt="Text Box 7" />
                </motion.div>
                <motion.div
                  className="absolute inset-0"
                  style={{
                    opacity: explosionOpacity,
                    scale: explosionScale,
                  }}
                >
                  <Explosion />
                </motion.div>
              </motion.div>
            )}
          </motion.div>
        )}

        {isFracturedAkuVisible && (
          <motion.div
            key="fracturedAku"
            className="fixed top-0 w-screen h-screen"
            style={{
              x: fracturedAkuX,
              y: fracturedAkuY,
              scale: fracturedAkuScale,
              opacity: fracturedAkuOpacity,
              willChange: "transform",
              zIndex: 2,
            }}
          >
            <FracturedAku />
            <motion.div
              key="textBox8"
              className="absolute top-[30%] left-[10%] transform  z-10"
              style={{
                // scale: textBox8Scale,
                // opacity: textBox8Opacity,
                willChange: "transform",
              }}
            >
              <Image src={text8} className="w-[50%] h-auto" width={200} height={200} alt="Text Box 8" />
            </motion.div>
          </motion.div>
        )}

        {/* Vortex Scene */}

        {isInVortexScene && (
          <>
            <motion.div
              key="vortex"
              className="fixed top-0 w-screen h-screen"
              style={{
                willChange: "transform",
                zIndex: 1,
              }}
            >
              <Vortex />
            </motion.div>

            <motion.div
              key="scatteredMechs"
              className="fixed top-0 w-screen h-screen"
              style={{
                scale: scatteredMechsScale,
                rotate: scatteredMechsRotate,
                willChange: "transform",
                zIndex: 2,
              }}
            >
              <ScatteredMechs />
            </motion.div>
          </>
        )}
      </AnimatePresence>
    </section>
  );
};

export default Landing;
