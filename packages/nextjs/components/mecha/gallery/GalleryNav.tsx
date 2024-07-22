// components/GalleryNav.tsx
import { FC } from "react";
import Link from "next/link";

const GalleryNav: FC = () => {
  return (
    <nav className="flex justify-around bg-gray-800 text-white p-4">
      <Link href="/gallery/all">All Tokens</Link>
      <Link href="/gallery/your-tokens">Your Tokens</Link>
      <Link href="/gallery/search">Search</Link>
      <Link href="/gallery/packs">Your Packs</Link>
    </nav>
  );
};

export default GalleryNav;
