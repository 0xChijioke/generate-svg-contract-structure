//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_01_true_03_RIDER_tweetybord_1 {

using ToColor for bytes4;

function renderFn5(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked(colors[8].toColor(),'" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="8.997" d="M1084.75 1358.92c4.55 19-.18 56.59-.18 56.59s46.05 6.21 57.65-2.54c11.59-8.74 12.26-38.29.72-47.93-11.54-9.63-61.58-20.24-58.19-6.12Z" clip-rule="evenodd"/><path fill="',colors[8].toColor(),'" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="8.997" d="M1079.04 1365.31c-6.84-6.58-30.62-13.01-52.88-26.57-23.15-14.1-35.656-52.26-44.667-35.21-10.781 20.42-37.182 141.13-20.022 157.7 9.523 9.19 120.169-55.49 120.169-55.49s11.34-27-2.6-40.43Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".3" fill-rule="evenodd" d="m1082.8 1376.1-86.864-27.38 68.024 35s-79.136 9.14-75.13 10.51c4.006 1.37 78.77 5.01 78.77 5.01l-98.245 31.69-.553-19.01-7.299 46.51 122.527-48.59-1.23-33.74Zm4.44-5.96 9.18 5.72 4.51 30.78 9.52-16.88s-7.48 18.6-3.57 17.74c3.91-.87 15.6-15.37 15.6-15.37l-6.39 14.93 23.65-1.98-2.71 5.25s-51.65 7.42-51.28 5.27c.36-2.17 1.49-45.46 1.49-45.46Z" clip-rule="evenodd"/><path fill="',colors[8].toColor(),'" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="8.997" d="M1149.2 1365.66s45.87-7.97 63.02-14.56c14.55-5.58 36.81-40.83 39.89-24.96 3.81 19.53.08 129.03-17.09 142.15-17.16 13.11-85.91-63.47-85.91-63.47l.09-39.16Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".3" fill-rule="evenodd" d="M1150.74 1379.67s5.62 5.66 11.82 2.95c6.2-2.72 72.32-13.33 72.32-13.33s-63.2 13.14-66.62 20.09c-3.41 6.95 54.35 37.21 54.35 37.21s-50.14-28.92-62.58-33.75c-2.98-1.16-3.3 3.82-.76 5.76 9.61 7.32 52.58 34.79 48.73 33.68-2.85-.83-30.94-19.85-46.69-26.72-5.47-2.39-11.96 1.61-11.96 1.61l1.39-27.5Z" clip-rule="evenodd"/><path fill="',colors[9].toColor(),'" fill-opacity=".53" stroke="'));
      
        return render;
      }

    function renderFn6(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked(colors[10].toColor(),'" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="7.824" d="M1027.25 1551.11c37.22 0 67.4-29.79 67.4-66.54 0-36.75-30.18-66.54-67.4-66.54-37.228 0-67.405 29.79-67.405 66.54 0 36.75 30.177 66.54 67.405 66.54Z"/><path fill="',colors[9].toColor(),'" fill-opacity=".53" stroke="',colors[10].toColor(),'" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="7.868" d="M1191.18 1544.08c37.15 0 67.26-28.47 67.26-63.58s-30.11-63.57-67.26-63.57c-37.15 0-67.26 28.46-67.26 63.57s30.11 63.58 67.26 63.58Z"/><path fill="#fff" fill-rule="evenodd" d="M1204.65 1437.86c-4.15-.5-21.49 8.53-13.44 15.37 8.06 6.83 22.83 7.35 24.93 3 2.09-4.34-7.33-17.87-11.49-18.37Zm-158.08-2.43c-4.16-.5-21.5 8.54-13.44 15.37 8.05 6.83 22.83 7.35 24.92 3.01 2.09-4.35-7.33-17.88-11.48-18.38Z" clip-rule="evenodd"/>'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn5(colors),renderFn6(colors)));
      
        return render;
      }
}