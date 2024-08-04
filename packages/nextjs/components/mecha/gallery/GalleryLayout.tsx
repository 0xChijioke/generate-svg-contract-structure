// components/Layout.tsx
import { ReactNode } from "react";
import { galleryImage } from "../base64Elements";
import { MetaHeader } from "~~/components/MetaHeader";

interface LayoutProps {
  title: string;
  description: string;
  children: ReactNode;
}

const GalleryLayout: React.FC<LayoutProps> = ({ title, description, children }) => {
  return (
    <>
      <MetaHeader title={title} description={description} />
      <div className="relative overflow-hidden">
        <div className="w-[100vw] h-[100vh] bg-cover bg-center fixed" style={{ backgroundImage: galleryImage }} />
        <div className="inset-0 z-10 flex items-center justify-center overflow-auto">{children}</div>
      </div>
    </>
  );
};

export default GalleryLayout;
