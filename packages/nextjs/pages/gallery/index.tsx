import dynamic from "next/dynamic";
import { NextPage } from "next";
import GalleryComponent from "~~/components/mecha/gallery/GalleryComponent";

const GalleryLayout = dynamic(() => import("~~/components/mecha/gallery/GalleryLayout"), { ssr: false });

const Gallery: NextPage = () => {
  return (
    <GalleryLayout title={`Gallery | Onchain Mecha`} description={""}>
      <GalleryComponent />
    </GalleryLayout>
  );
};

export default Gallery;
