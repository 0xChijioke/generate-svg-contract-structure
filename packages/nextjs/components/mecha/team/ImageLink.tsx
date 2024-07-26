import Image from 'next/image';

const ImageLink = ({ src, alt, link }: any) => {
  const handleImageClick = () => {
    window.open(link, '_blank', 'noopener,noreferrer');
  };

  return (
      <Image alt={alt} fill src={src} onClick={handleImageClick} className="cursor-pointer" />
  );
};

export default ImageLink;
