//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_02_rare_02_POD_beefeater_2 {

using ToColor for bytes4;

function renderFn8(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked(' 925.032s-17.44 17.353-12.02 38.931l-50.58 47.857 5.14 12.94-20-4.04-10.35-39.926 14.5-28.405-38.043 14.86 26.223 67.231-34.122.85-25.103-65.452 54.805-25.638c8.4 1.663 16.41 1.324 22.76-7.09-.93 12.405 7.19 9.925 15.35 7.37l2.71 10.67 27.33-24.015c2.75 7.83 8.03 10.348 21.4-6.143Z" clip-rule="evenodd"/>'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn8(colors)));
      
        return render;
      }
}