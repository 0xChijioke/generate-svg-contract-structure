import { useEffect } from "react";
import type { AppProps } from "next/app";
import { useRouter } from "next/router";
import { RainbowKitProvider, darkTheme } from "@rainbow-me/rainbowkit";
import "@rainbow-me/rainbowkit/styles.css";
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import Lenis from "lenis";
import NextNProgress from "nextjs-progressbar";
import { Toaster } from "react-hot-toast";
import { useDarkMode } from "usehooks-ts";
import { WagmiConfig } from "wagmi";
import { Footer } from "~~/components/Footer";
import { Header } from "~~/components/Header";
import { BlockieAvatar } from "~~/components/scaffold-eth";
import { TokenProvider } from "~~/context/TokenContext";
import { wagmiConfig } from "~~/services/web3/wagmiConfig";
import { appChains } from "~~/services/web3/wagmiConnectors";
import "~~/styles/globals.css";

const ScaffoldEthApp = ({ Component, pageProps }: AppProps) => {
  const router = useRouter();
  const queryClient = new QueryClient({
    defaultOptions: {
      queries: {
        staleTime: Infinity,
      },
    },
  });

  const { isDarkMode } = useDarkMode();

  useEffect(() => {
    const body = document.body;
    body.setAttribute("data-theme", isDarkMode ? "scaffoldEthDark" : "scaffoldEthDark");
  }, [isDarkMode]);

  useEffect(() => {
    const lenis = new Lenis({
      duration: 1.0,
      easing: t => 1 - Math.pow(1 - t, 4),
    });

    function raf(time: number) {
      lenis.raf(time);
      requestAnimationFrame(raf);
    }

    requestAnimationFrame(raf);

    return () => lenis.destroy();
  }, []);

  const wrapWithProviders = (component: React.ReactNode) => {
    if (router.pathname.startsWith("/gallery")) {
      return <TokenProvider>{component}</TokenProvider>;
    }
    return component;
  };

  return (
    <WagmiConfig config={wagmiConfig}>
      <NextNProgress color="red" />
      <RainbowKitProvider chains={appChains.chains} avatar={BlockieAvatar} theme={darkTheme()}>
        <QueryClientProvider client={queryClient}>
          <div className="flex flex-col bg-black min-h-screen">
            <Header />
            <main className="relative flex flex-col flex-1">{wrapWithProviders(<Component {...pageProps} />)}</main>
            <Footer />
          </div>
          <Toaster />
        </QueryClientProvider>
      </RainbowKitProvider>
    </WagmiConfig>
  );
};

export default ScaffoldEthApp;
