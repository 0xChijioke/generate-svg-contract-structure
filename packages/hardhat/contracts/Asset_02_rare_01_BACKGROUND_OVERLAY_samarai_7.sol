//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_02_rare_01_BACKGROUND_OVERLAY_samarai_7 {

using ToColor for bytes4;

function renderFn26(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('dd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="8.97" d="M2039.85 2416.71s18.93 64.37-4.43 75.31c-23.35 10.98-57.25-29.15-57.54-39.05-.27-9.91 61.97-36.26 61.97-36.26Z" clip-rule="evenodd"/><path fill="',colors[0].toColor(),'" fill-rule="evenodd" stroke="',colors[0].toColor(),'" stroke-linecap="square" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="9.209" d="M2026.81 2445.6c3.01.2 5.44-2.98 5.44-2.98l-10.95-.74s2.48 3.52 5.51 3.72Z" clip-rule="evenodd"/><path fill="',colors[0].toColor(),'" fill-rule="evenodd" stroke="',colors[0].toColor()));
      
        return render;
      }

    function renderFn27(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('" stroke-linecap="square" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="9.644" d="M2096.59 2423.19c2.85-1.44 3.43-6.61 3.43-6.61l-10.34 5.21s4.06 2.84 6.91 1.4Z" clip-rule="evenodd"/><path fill="#000" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="4.747" d="M1215.51 2680.6c-9.22 5.94-30.95 10.42-42.72-6.2-6.16-8.72 5.45-24.77 13.27-22.47 21.04 6.22 23.17-1.91 29.61-.96 6.73.98 13.38 16.61-.16 29.63Zm89.89 19.7s37.25-18.11 46.05-26.09c9.06-8.22 17.38-19.07 16.13-26.3-2.35-13.43-18.32-12.5-23.68-9.09-2.32 1.46-8.93 12.48-17.24 17.21-10.12 5.73-22 5.15-22 5.15l.74 39.12Z" clip-rule="evenodd"/><path fill="#fff" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimi','t="1.5" stroke-width="4.747" d="M1333.68 2686.73c5.47 31.85-8.66 103.89-40.19 85.68-5.85-3.38-17.97-16.39-32.27-20.63-16-4.73-31.03 5.82-46.49-1.38-21.04-9.81-20.29-35.76-19.64-51.31 1.34-32.28 32.5-73.65 67.06-67.44 35.84 6.46 66.05 23.24 71.53 55.08Z" clip-rule="evenodd"/><path fill="#000" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="4.747" d="M1217.66 2714.87c-5.92 15.3-30.39 28.26-50.71 26.85-7.89-3.03-5.23-22.53-1.14-29.18 4.07-6.67 16.64-2.63 27.99-12.26 6.58-5.6 22.36-4.13 23.86 14.59Z" clip-rule="evenodd"/><path fill="#fff" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="6.665" d="M1435.64 2808.52c-25.38 37.6-97.27 44.82-139.64 16.22-42.39','-28.62-24.18-87.23 1.2-124.83 25.39-37.6 87.82-59.91 130.21-31.3 42.37 28.61 33.62 102.31 8.23 139.91Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".2" fill-rule="evenodd" d="M1204.6 2672.02c15.81 29.72 44.36 39.93 77.63 42.92l-83.24-13.37c-9.18-9.85-6.88-19.7 5.61-29.55Z" clip-rule="evenodd"/></g><defs><clipPath id="a"><path fill="#fff" d="M0 0h2160v2700H0z"/></clipPath></defs>'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn26(colors),renderFn27(colors)));
      
        return render;
      }
}