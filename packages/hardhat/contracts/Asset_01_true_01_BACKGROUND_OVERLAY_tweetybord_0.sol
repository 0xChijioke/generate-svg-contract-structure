//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_01_true_01_BACKGROUND_OVERLAY_tweetybord_0 {

using ToColor for bytes4;

function renderFn0(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('<path fill="',colors[0].toColor(),'" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="3.744" d="M1190.09 254.13c-25.33-52.952-65.59-93.771-117.85-124.813 49.56 18.563 91.28 47.278 120.83 91.733 28.9-41.456 81.59-65.93 138.38-87.47-63.21 38.687-115.8 78.361-141.36 120.55Z" clip-rule="evenodd"/><path fill="',colors[0].toColor(),'" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="2.945" d="M1024.65 686.477c-24.86-33.39-64.353-59.13-115.627-78.704 48.628 11.705 89.559 29.812 118.547 57.844 28.35-26.14 80.04-41.573 135.76-55.156-62.01 24.395-113.61 49.413-138.68 76.016Zm811.3 1323.163c-24.85-33.39-64.35-59.13-115.62-78.7 48.63 11.7 89.56 29.81 118.54 57.84 28.36-26.14 80.05-41.57 135.76-55.15-62.01 24.39-113.6 49.41-138.68 76.01Z" clip-rule="evenodd"/><path fill="',colors[0].toColor(),'" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="3.465" d="M298.967 2024.07c-15.285-75.19-39.568-133.15-71.095-177.22 29.9 26.35 55.067 67.13 72.891 130.25 17.433-58.86 49.215-93.62 83.475-124.2-38.129 54.93-69.855 111.27-85.271 171.17Z" clip-rule="evenodd"/><path fill="',colors[0].toColor()));
      
        return render;
      }

    function renderFn1(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="2.38" d="M1745.12 546.952c12.62 46.717 31.79 82.512 56.22 109.504-22.95-15.947-42.53-40.986-56.89-80.12-12.31 37.09-35.79 59.363-61.2 79.076 27.98-34.995 51.11-70.755 61.87-108.46Z" clip-rule="evenodd"/>'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn0(colors),renderFn1(colors)));
      
        return render;
      }
}