//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_01_true_02_POD_fewocious_5 {

using ToColor for bytes4;

function renderFn16(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('1-11.82Zm16.25 3.64-.1-.31.59-.2.11.3c.89 1.93 2.05 4.02 3.19 6.23.7 1.39 1.44 2.77 2.06 4.17.67 1.49 1.22 2.97 1.73 4.32 1.43 3.83 2.33 6.63 2.33 6.63l.13.28-.56.29-.14-.29s-1.7-2.43-3.71-6.01c-.71-1.27-1.46-2.67-2.13-4.18-.63-1.41-1.15-2.91-1.64-4.4-.79-2.39-1.38-4.74-1.86-6.83Z" clip-rule="evenodd"/>'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn16(colors)));
      
        return render;
      }
}