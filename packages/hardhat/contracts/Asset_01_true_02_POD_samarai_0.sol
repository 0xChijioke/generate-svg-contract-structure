//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_01_true_02_POD_samarai_0 {

using ToColor for bytes4;

function renderFn0(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('<path fill="',colors[0].toColor(),'" d="M1081.91 2114.3c312.17 0 565.23-280 565.23-625.41 0-345.4-253.06-625.402-565.23-625.402S516.678 1143.49 516.678 1488.89c0 345.41 253.062 625.41 565.232 625.41Z"/><path fill="',colors[1].toColor(),'" fill-rule="evenodd" d="M1081.91 863.494c311.96 0 553.46 280.436 565.23 625.396 15.91 466.69-565.23 625.42-565.23 625.42s508.98-350.03 24.11-588.52c-505.938-248.87-186.748-662.296-24.11-662.296Z" clip-rule="evenodd"/><path fill="',colors[1].toColor(),'" d="M799.151 2003.34c94.631 0 171.345-76.56 171.345-171 0-94.43-76.714-170.99-171.345-170.99s-171.344 76.56-171.344 170.99c0 94.44 76.713 171 171.344 171Z"/><path fill="',colors[0].toColor()));
      
        return render;
      }

    function renderFn1(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('" d="M1312.13 1270.98c94.63 0 171.35-76.56 171.35-171s-76.72-170.994-171.35-170.994-171.34 76.554-171.34 170.994 76.71 171 171.34 171Z"/><path fill="#000" fill-opacity=".3" fill-rule="evenodd" d="M785.937 969.77s208.306-72.498 402.543 49.26c194.05 121.64 244.61 219.32 253.37 420.77 10.42 239.72-15.24 378.91-193.31 465.97-206.4 100.92-520.982 22.85-520.982 22.85 170.609 219.31 451.372 227.49 818.742 60.53 106.1-298.73 138.09-628.5 90.14-991.777-609.11-228.023-719.345-120.782-850.503-27.603Z" clip-rule="evenodd"/>'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn0(colors),renderFn1(colors)));
      
        return render;
      }
}