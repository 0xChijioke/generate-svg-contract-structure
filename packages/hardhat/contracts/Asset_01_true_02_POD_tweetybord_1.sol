//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_01_true_02_POD_tweetybord_1 {

using ToColor for bytes4;

function renderFn8(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('" fill-opacity=".4" fill-rule="evenodd" d="M1249.91 907.085c26.68 2.126 62.25 66.061 63.32 124.705 1.06 58.49-18.52 118.33-45.2 121.19-28.37 3.03-68.42-64.37-69.5-123.8-1.07-59.499 23.01-124.357 51.38-122.095Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".3" fill-rule="evenodd" d="M753.57 995.415c248.76-45.421 453.23-6.258 570.57 120.775l48.3 1c29.46 29.47 68.76 109.37 33.58 117.46 40.36 28.29 57.34 56.56 51.72 84.81 25.65.72 2.89 22.38-4.41 36.79-10.95 13.98-5.93 35 9.88 39.94 7.83 38.89-16.87 71.93-44.94 97.45l-4.06 79.94c34.03 31.62 43.03 62.61 41.5 93.86 7.51 23.53-5.21 27.77-16.88 36.23-21.44 20.79-13.97 38.87 2.07 56.14-6.23 38.71-32.44 54.29-66.27 61.05-40.31 33.19-62.28 113.65-102.92 134.66-21.94 11.34 7.9-47.4-10.6-32.82-27.29 21.51 61.51-738.97 61.51-738.97l-54.36 88.19c','11.21 99.06-110.54 709.2-139.33 715.97-93.37 21.96-204.411 34.9-310.385 6.96 106.77 122.24 336.525 165.66 631.415 205.17l299.05-908.38-530.3-450.952c-213.13 12.39-382.681 59.612-465.14 154.727Z" clip-rule="evenodd"/>'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn8(colors)));
      
        return render;
      }
}