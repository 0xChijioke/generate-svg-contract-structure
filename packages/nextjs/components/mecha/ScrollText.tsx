import React, { useEffect, useRef } from 'react';
import { motion } from 'framer-motion';

const ScrollText = ({ scrollPosition }: { scrollPosition: number }) => {
  const textRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    const handleScroll = () => {
      const textContainer = textRef.current;
      if (textContainer) {
        // Calculate the scroll position within the text container
        const scrollTop = textContainer.scrollTop;
        const scrollHeight = textContainer.scrollHeight - textContainer.clientHeight;
        const scrollFraction = scrollTop / scrollHeight;

        console.log(scrollFraction)

        // Update animation based on scroll position
        // You can adjust the animation based on scrollFraction
        // For example, you can move the text content up or down
        // based on the scrollFraction value
        // For simplicity, let's just rotate the text based on the scrollFraction
        textContainer.style.transform = `rotateX(${scrollFraction * 90}deg)`;
      }
    };

    const textContainer = textRef.current;
    if (textContainer) {
      // Add scroll event listener
      textContainer.addEventListener('scroll', handleScroll);
    }

    return () => {
      // Remove scroll event listener on component unmount
      if (textContainer) {
        textContainer.removeEventListener('scroll', handleScroll);
      }
    };
  }, []);

  return (
    <motion.div
      ref={textRef}
      initial={{ opacity: 0 }}
      className='w-full crawl'
      animate={{ opacity: 1 }}
      exit={{ opacity: 0 }}
      style={{
    //     transform: `perspective(1300px) rotateX(50deg)`,
        transformOrigin: 'center'
      }}
    >
      <motion.p
        className='text-white leading-tight tracking-tighter text-6xl'>
        In a dystopian future, with an impending doom set on disrupting the balance and harmony of the universe by demolishing a tiny blue planet teeming with life, Earth. In answer to this impending doom, a group of seven misbegotten characters were symbiotically paired with seven magical mech fighter bots. The loyal warriors rose up to fight the evil forces and protect the universal life essence. Together, they formed an unstoppable force, combining the powers of the elements, animal spirits, and the ancient ways with advanced technology and determination of spirit. After an epic battle, they dispersed across the universe, embarking on a lonely plight to protect the seven spectrums of the Cosmosphere. Alone, they journeyed in perpetuity through war-torn landscapes, battling evil and protecting the innocent in their constant struggle to maintain balance in the universe.
      </motion.p>
    </motion.div>
  );
};

export default ScrollText;
