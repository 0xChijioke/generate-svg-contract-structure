//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_01_true_05_BODY_samarai_2 {

using ToColor for bytes4;

function renderFn7(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('" stroke-linecap="square" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="16.174" d="m1555.27 1116.08 289.19-216.555 169.82 142.355 70.39 289.6-440.4-1.52-28.14-107.62-60.86-106.26Z" clip-rule="evenodd"/><path fill="',colors[6].toColor(),'" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="13" d="m1823.31 1072.45 24.36 63.45h78.82l-63.77 39.21 24.36 63.45-63.77-39.21-63.77 39.21 24.36-63.45-63.77-39.21h78.82l24.36-63.45Zm200.38 17.64 24.99 110.37-63.77 39.21 24.36-63.45-63.77-39.21h78.82l-.63-46.92Z" clip-rule="evenodd"/><path fill="#fff" fill-rule="evenodd" d="m1829.75 922.223-181.4 140.337 198.38-124.781 119.21 113.341 60.12 271.49 46.81-2.18-67.25-271.36-161.55-136.914-14.32 10.067Zm-492.85 8.283c-85.23-48.06-171.78-67.783-295.64-68.074 0 0 99.23-6.852 152.05 4.494 47.01 10.095 143.59 63.58 143.59 63.58Z" clip-rule="evenodd"/><path fill="gray" fill-rule="evenodd" stroke="#000" stroke-linecap="square" stroke-linejoin="round" stroke-miterlimit="1.5" strok','e-width="16.174" d="m1399.11 919.75 249.99-135.346 238.42-35.173-468.41 237.357-20-66.838Z" clip-rule="evenodd"/><path fill="#fff" fill-rule="evenodd" d="M1730.9 799.521c4 1.217-.94 12.5-.94 12.5l62.12-33.578-136.48 19.089s65.46-1.008 75.3 1.989Zm-374.1 222.089s168.42 205.95 167.9 337.63c-.9 228.59-108.74 465.15-108.74 465.15 109.69-302.53 61.79-579.81-59.16-802.78Z" clip-rule="evenodd"/></g><defs><clipPath id="a"><path fill="#fff" d="M0 0h2160v2700H0z"/></clipPath></defs>'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn7(colors)));
      
        return render;
      }
}