//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_02_rare_05_BODY_boulderdash_1 {

using ToColor for bytes4;

function renderFn7(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked(colors[4].toColor(),'" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="9" d="M1631.21 1879.39c1 .56 40.58 25.03 41.38 32.09 1.52 13.33-12.39 99.49-12.39 99.49-15.27-26.47-31.66-46.01-48.55-62.46l-14.49-45.86 9.96-26.11 24.09 2.85Z" clip-rule="evenodd"/><path fill="',colors[4].toColor(),'" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="8.961" d="M1644.11 1753.62c15.53 6.03 29.73 14.8 43.29 24.9l-6.12 87.35s-49.91-55.57-51.06-48.81l-18.61-40.77 7.42-23.01 25.08.34Z" clip-rule="evenodd"/><path fill="#fff" fill-opacity=".8" fill-rule="evenodd" d="m1663.88 1722.54-38.68 359.62-125.58 120.48 102.89-123.29 8.55-45.71-103.18-63.95-101.95 80.26 92.83-96.19s101.21 48.42 115.32 33.44c16.08-17.08 49.8-264.66 49.8-264.66Zm-532.29 454.94 5.49 63.67 165.4 109.45c-70.32-2.6-136.74 9.85-202.69 24.15 0 0 133.37-37.72 133-44.03-1.31-21.83-116.78-83.94-116.78-83.94l15.58-69.3Z" clip-rule="evenodd"/><path fill="#fff" fill-opacity=".8" fill-rule="evenodd" d="m1168.09 2160.75 123.06-59.12-108.16 68.51s-10.54 38.19-.42 50.19','c20.36 24.15 122.62 94.72 122.62 94.72l-134.24-83.38-2.86-70.92Z" clip-rule="evenodd"/><path fill="#fff" fill-rule="evenodd" d="M1356.8 1021.61s168.42 205.95 167.9 337.63c-.9 228.59-108.74 465.15-108.74 465.15 109.69-302.53 61.79-579.81-59.16-802.78ZM996.192 2369.54s-34.652-29-33.486-38.05c1.166-9.05 34.868-6.34 40.484-16.26 5.56-9.82 7.26-33.05 7.26-33.05s-17.513 19.22-27.862 26.96c-11.928 8.93-39.422 1.17-35.609 21.54 1.898 10.14 49.213 38.86 49.213 38.86Z" clip-rule="evenodd"/>'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn7(colors)));
      
        return render;
      }
}