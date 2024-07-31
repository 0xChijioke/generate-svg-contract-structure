export const getShareUrl = (platform: string, tokenName: string, url: string) => {
  const encodedName = encodeURIComponent(tokenName);
  const encodedUrl = encodeURIComponent(url);
  const lineBreak = "%0A";
  const message = `Check out this amazing Mecha card: ${encodedName}.${lineBreak}Mint your own now!${lineBreak}${encodedUrl}`;

  switch (platform) {
    case "x":
      return `https://x.com/intent/post?text=${message}`;
    case "telegram":
      return `https://t.me/share/url?url=${encodedUrl}&text=${message}`;
    case "linkedin":
      return `https://www.linkedin.com/shareArticle?mini=true&url=${encodedUrl}&title=${encodedName}&summary=${message}&source=onchainmecha.xyz`;
    case "warpcast":
      return `https://warpcast.com/~/compose?text=${message}`;
    default:
      return "";
  }
};
