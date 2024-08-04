//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_02_rare_07_ARMS_FRONT_samarai_2 {

using ToColor for bytes4;

function renderFn17(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked(colors[0].toColor(),'" fill-opacity=".3" fill-rule="evenodd" stroke="#fff" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="13" d="m1920.36 2187.13-40.07 49.85 51.91-7.73 33.63 38.41 221.44 239.92 28.43-78.95-66.99-69.84-23.96 22.99-27.41 2.36 17.76-51.84-98.68-97.4-18.43 11.77-77.63-59.54Z" clip-rule="evenodd"/></g><defs><clipPath id="a"><path fill="#fff" d="M0 0h2160v2700H0z"/></clipPath></defs>'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn17(colors)));
      
        return render;
      }
}