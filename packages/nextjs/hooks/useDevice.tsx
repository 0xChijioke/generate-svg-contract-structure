import { useEffect, useState } from "react";

const useDevice = () => {
  const [isMobile, setIsMobile] = useState(false);

  useEffect(() => {
    const userAgent = typeof window.navigator === "undefined" ? "" : navigator.userAgent;
    const mobile = Boolean(userAgent.match(/Android|BlackBerry|iPhone|iPad|iPod|Opera Mini|IEMobile|WPDesktop/i));
    setIsMobile(mobile);
  }, []);

  return { isMobile };
};

export default useDevice;
