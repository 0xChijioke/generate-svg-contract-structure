//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_02_rare_02_POD_samarai_0 {

using ToColor for bytes4;

function renderFn0(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('<path fill="',colors[0].toColor(),'" d="M1081.91 2114.3c312.17 0 565.23-280 565.23-625.41 0-345.4-253.06-625.402-565.23-625.402S516.678 1143.49 516.678 1488.89c0 345.41 253.062 625.41 565.232 625.41Z"/><path fill="',colors[1].toColor(),'" fill-rule="evenodd" d="M1081.91 863.494c311.96 0 553.46 280.436 565.23 625.396 15.91 466.69-565.23 625.42-565.23 625.42s508.98-350.03 24.11-588.52c-505.939-248.87-186.749-662.296-24.11-662.296Z" clip-rule="evenodd"/><path fill="',colors[1].toColor(),'" d="M799.151 2003.34c94.631 0 171.344-76.56 171.344-171 0-94.43-76.713-170.99-171.344-170.99s-171.344 76.56-171.344 170.99c0 94.44 76.713 171 171.344 171Z"/><path fill="',colors[0].toColor()));
      
        return render;
      }

    function renderFn1(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('" d="M1312.13 1270.98c94.63 0 171.35-76.56 171.35-171s-76.72-170.994-171.35-170.994-171.34 76.554-171.34 170.994 76.71 171 171.34 171Z"/><path fill="#000" fill-opacity=".3" fill-rule="evenodd" d="M781.104 966.741s213.139-69.469 407.376 52.289c194.05 121.64 244.61 219.32 253.37 420.77 10.42 239.72-15.24 378.91-193.31 465.97-206.4 100.92-562.302 35.46-562.302 35.46 188.192 186.01 468.902 256.46 787.162 13.02 270.13-307.36 200.22-687.23-13.05-950.8-342.12-234.926-551.447-126.116-679.246-36.709Z" clip-rule="evenodd"/>'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn0(colors),renderFn1(colors)));
      
        return render;
      }
}