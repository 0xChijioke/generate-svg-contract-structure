//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_04_aku_02_POD_aku_1 {

using ToColor for bytes4;

function renderFn7(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="10.651" d="M1356.14 890.861c29.06-56.772 218.21 214.089 179.57 225.789-19.31 5.84-40.03 7.9-61.22 5.42-84.77-9.94-145.28-88.79-135.06-175.982 2.33-19.871 8.13-38.47 16.71-55.227Z" clip-rule="evenodd"/><path fill="',colors[2].toColor(),'" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="9.924" d="M1435.63 948.967c10.64-30.95 198.45 218.973 124.36 218.973-74.08 0-134.23-71.27-134.23-159.06 0-21.187 3.51-41.417 9.87-59.913Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".4" fill-rule="evenodd" d="M1243.45 910.789s-.5 60.141 22.36 84.278c37.72 39.813 84.43 37.443 84.43 37.443l-10.92-65.599 40.9 28.162s2.79 34.437 26.06 60.437c5.96 6.65 31.32 17.96 31.32 17.96l-2.93-58.28-191.22-104.401Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".3" fill-rule="evenodd" d="m911.164 920.356-101.663 60.102c32.025-7.951 66.792-22.098 86.442-2.08 0 0 145.517 5.742 199.217 19.391 7 1.781 13.32.067 17.99-.93 12.61-2.695 27.42 1.063 43.44 9.571 62.6 33.23 143.55 ','138.97 182.66 215.25 5.04 9.82 31.85.93 35.37 9.55 1.41 3.45-19.6 25.32-18.09 29.13 21.38 53.91 52.15 142.58 68.52 235.64 1.85 10.5 29.3 24.39 30.75 34.95 1.44 10.59-23.12 17.85-22.14 28.42 3.19 34.47 3.7 68.6.32 100.88-6.22 59.46-24.44 110.39-49.97 153.91-5.97 10.16-1.4 26.6-8.1 35.97-5.87 8.2-22.94 9.44-29.29 17.05-122.18 146.53-325.9 185.81-325.9 185.81 171.5 44.6 284.1-39.18 462.89-146.06l127.05-417.72c-15.73-168.02-55-327.91-156.75-466.24-201.5-178.885-447.56-136.216-542.746-102.594Z" clip-rule="evenodd"/>'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn7(colors)));
      
        return render;
      }
}