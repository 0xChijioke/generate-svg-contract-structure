import { text1, text2, text3 } from "~~/components/mecha/Story"

const TestImages = () => {
  return (
    <div>
      <img src={text1} className="w-80 h-80" alt="Text Box 1" />
      <img src={text2} alt="Text Box 2" />
      <img src={text3} alt="Text Box 3" />
    </div>
  );
};

export default TestImages;
