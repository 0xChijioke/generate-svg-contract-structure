

// useEffect(() => {
//   const moveInEndSquidGunner = 3300;
//   const moveOutStartSquidGunner = 4000;
//   const maxScale = 6; // Maximum scale value
//   const maxHorizontalDistance = 100; // Maximum horizontal distance for separation
//   const movementMagnitude = 2; // Magnitude of movement

//   let scaleSquidGunner = 1;
//   let opacitySquidGunner = 1;
//   let squidX = 0;
//   let gunnerX = 0;

//   if (scrollPosition >= moveInEndSquidGunner && scrollPosition <= moveOutStartSquidGunner) {
//     // Calculate scale based on scroll position, scaling from 1 to maxScale
//     const scrollRange = moveOutStartSquidGunner - moveInEndSquidGunner;
//     const scrollDistance = scrollPosition - moveInEndSquidGunner;
//     const scaleRatio = Math.min(scrollDistance / scrollRange, 1); // Ensure ratio is capped at 1
//     scaleSquidGunner = 1 + scaleRatio * (maxScale - 1); // Scaling between 1 and maxScale
//     opacitySquidGunner = 1; // Ensure opacity is fully visible while scaling up

//     // Calculate horizontal positions based on scale
//     const maxHorizontalShift = maxHorizontalDistance * (maxScale - 1);
//     squidX = -maxHorizontalShift * scaleRatio * movementMagnitude; // Move Squid towards the left
//     gunnerX = maxHorizontalShift * scaleRatio * movementMagnitude; // Move Gunner towards the right
//   } else if (scrollPosition < moveInEndSquidGunner) {
//     // Reset scale if scroll position is before moveInEndSquidGunner
//     scaleSquidGunner = 1;
//     opacitySquidGunner = 1; // Ensure opacity is fully visible
//   } else {
//     // Squid and Gunner disappear when scroll position exceeds moveOutStartSquidGunner
//     scaleSquidGunner = maxScale;
//     opacitySquidGunner = 0; // Set opacity to 0 when Squid and Gunner disappear
//   }
  
//   // Update Squid and Gunner animations
//   squidControls.start({ scale: scaleSquidGunner, opacity: opacitySquidGunner, x: squidX, transition: { duration: 0.5 } });
//   gunnerControls.start({ scale: scaleSquidGunner, opacity: opacitySquidGunner, x: gunnerX, transition: { duration: 0.5 } });
// }, [scrollPosition, squidControls, gunnerControls]);



  // useEffect(() => {
  //   // Define movement range
  //   const moveInStart = 2704;
  //   const moveOutEnd = 8316;
  
  //   // Calculate movement based on scroll position
  //   let moveY = 0;
  //   if (scrollPosition >= moveInStart && scrollPosition <= moveOutEnd) {
  //     moveY = -(scrollPosition - moveInStart);
  //   } else if (scrollPosition < moveInStart) {
  //     moveY = 0; 
  //   }
  
  //   // Update position animations
  //   japaneseControls.start({ y: moveY, transition: { duration: 0.5 } });
  // }, [scrollPosition, japaneseControls]);






  useEffect(() => {
    const opacity = calculateOpacity(scrollPosition);

    // badGuyControls.start({ opacity, transition: { duration: 0.5 } });
  }, [scrollPosition]);

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
