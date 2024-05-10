import React, { useState, useEffect } from "react";
import BlackMatter from "~~/components/BlackMatter";
import useScreen from "~~/hooks/scaffold-eth/useScreen";

const Scroll = () => {
    const { scrollY } = useScreen();
    const [animationStart, setAnimationStart] = useState(0);
    const [animationEnd, setAnimationEnd] = useState(-40);
    const [isAnimating, setIsAnimating] = useState(false);

    const handleScroll = () => {
        // Determine scroll direction
        const newScrollY = window.scrollY;
        const newAnimationStart = isAnimating ? window.scrollY : 0; // Start animation from current position if already animating
        const newAnimationEnd = newScrollY > scrollY ? -0.001 : 0; // Adjust end position based on scroll direction

        setAnimationStart(newAnimationStart);
        setAnimationEnd(newAnimationEnd);
        setIsAnimating(true);
    };

    useEffect(() => {
        window.addEventListener("scroll", handleScroll);

        return () => {
            window.removeEventListener("scroll", handleScroll);
        };
    }, [scrollY]);

    useEffect(() => {
        const blackMatter = document.querySelector(".black-matter");

        // Handle auto-scrolling animation
        const autoScroll = () => {
            if (blackMatter) {
                blackMatter.style.transform = `translateY(${animationEnd}%)`;
                blackMatter.style.transition = "transform 10s linear";
                setTimeout(() => {
                    setIsAnimating(false);
                }, 50000); // Reset animation after 50 seconds
            }
        };

        autoScroll();

        return () => {
            if (blackMatter) {
                blackMatter.style.transition = "none"; // Remove transition on unmount
            }
        };
    }, [animationEnd]);

    return (
        <div>
            <div>
                <BlackMatter />
            </div>
        </div>
    );
};

export default Scroll;
