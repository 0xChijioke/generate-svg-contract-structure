//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_02_rare_00_BACKGROUND_fewocious_2 {

using ToColor for bytes4;

function renderFn12(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('" fill-rule="evenodd" d="M2042.42 2899.85c-33.03 2.85-307.39 33.77-307.39 33.77l26.28-53.87-172.96-14.7 34.85-21.98-143.63-85.45 20.67-11.95-124.08-102.18 163.88 82.74 6.74 48.85 114.48 34.43-1.69 31.94 132-55 14.2 67.92 88.63-72.98s181.05 115.61 148.02 118.46Zm-482.16-108.19 69.08 41.1c3.59 2.13 5.81 5.98 5.86 10.16a11.97 11.97 0 0 1-5.6 10.3l-4.6 2.9 137.33 11.67c3.94.34 7.46 2.59 9.42 6.04 1.95 3.44 2.08 7.62.35 11.18l-16.71 34.24c57.82-6.49 214.91-24.1 269.91-29.77-2.47-2.41-5.21-4.95-7.98-7.26-34.25-28.58-100.1-71.78-122.06-86l-81.86 67.42a11.98 11.98 0 0 1-11.61 2.05c-3.96-1.39-6.9-4.75-7.76-8.86l-11.24-53.72-118.61 49.42c-3.8 1.58-8.16 1.1-11.53-1.27a12.012 12.012 0 0 1-5.06-10.45l1.19-22.52-88.52-26.63Zm-25.39-15.1-5.86-42.46-61.88-31.24 40.74 33.55c3.04 2.5 4.66 6.33 4.33 10.26-.3','2 3.92-2.55 7.43-5.96 9.4l-2.94 1.7 31.57 18.79Z" clip-rule="evenodd"/></g><defs><clipPath id="a"><path fill="#fff" d="M0 0h2160v2700H0z"/></clipPath></defs>'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn12(colors)));
      
        return render;
      }
}