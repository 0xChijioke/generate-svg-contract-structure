import React, { useEffect, useRef } from "react";

const EasedCanvasAnimation = ({
  svgDataURL,
  initialScale,
  focusXMultiplier,
  focusYMultiplier,
}: {
  svgDataURL: any;
  initialScale: any;
  focusXMultiplier: any;
  focusYMultiplier: any;
}) => {
  const canvasRef = useRef(null);
  const animationRef = useRef(null);
  const scaleRef = useRef(initialScale); // Initial scale value

  useEffect(() => {
    const canvas = canvasRef.current;
    const context = canvas.getContext("2d");

    if (!context) return;

    const resolution = Math.min(window.devicePixelRatio || 1, 2); // resolution for retina displays

    const img = new Image();
    img.onload = () => {
      canvas.width = window.innerWidth * resolution;
      canvas.height = window.innerHeight * resolution;

      const centerX = canvas.width / 2;
      const centerY = canvas.height / 2;

      const drawImage = (scale: number) => {
        context.clearRect(0, 0, canvas.width, canvas.height);
        const imageWidth = img.width * scale;
        const imageHeight = img.height * scale;

        let focusX, focusY;
        if (scale > 1) {
          focusX = centerX - imageWidth * focusXMultiplier;
          focusY = centerY - imageHeight * focusYMultiplier;
        } else {
          focusX = centerX - img.width / 2;
          focusY = centerY - img.height / 2;
        }

        context.drawImage(img, focusX, focusY, imageWidth, imageHeight);
      };

      // Custom easing function for smoother scroll effect
      const customEasing = (t: number) => {
        return 1 - Math.pow(1 - t, 8);
      };

      const updateScale = () => {
        const scrollY = window.scrollY;
        const baseScale = initialScale;
        const scrollFactor = 0.0005;
        const easedFactor = customEasing(Math.min(scrollY * scrollFactor, 1)); // Ensure easedFactor stays within [0,1]
        const newScale = Math.max(1, baseScale - easedFactor * (baseScale - 1)); // Smooth scale adjustment

        scaleRef.current = newScale;
        drawImage(newScale);

        animationRef.current = requestAnimationFrame(updateScale);
      };

      updateScale();

      const handleScroll = () => {
        cancelAnimationFrame(animationRef.current);
        animationRef.current = requestAnimationFrame(updateScale);
      };

      window.addEventListener("scroll", handleScroll);

      return () => {
        window.removeEventListener("scroll", handleScroll);
        cancelAnimationFrame(animationRef.current);
      };
    };

    img.src = svgDataURL;

    return () => {
      cancelAnimationFrame(animationRef.current);
    };
  }, [svgDataURL, initialScale, focusXMultiplier, focusYMultiplier]);

  return <canvas ref={canvasRef} className="bg-black w-full h-full"></canvas>;
};

export default EasedCanvasAnimation;
