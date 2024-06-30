import dynamic from "next/dynamic";

const GalleryImage = dynamic(() => import("~~/components/mecha/GalleryImage"), { ssr: false });

const TestPage = () => {
  return (
    <div className="w-full fixed h-full">
      <GalleryImage />
    </div>
  );
};

export default TestPage;
