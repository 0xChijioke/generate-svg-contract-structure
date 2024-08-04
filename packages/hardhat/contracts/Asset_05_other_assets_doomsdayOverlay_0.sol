//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_05_other_assets_doomsdayOverlay_0 {

using ToColor for bytes4;

function renderFn0(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('<g clip-path="url(#a)"><path fill="',colors[0].toColor(),'" fill-opacity=".5" d="M2239.66-81.03H-63.527v2898.32H2239.66V-81.03Z"/><path fill="',colors[1].toColor(),'" fill-rule="evenodd" d="m2242.29-81.03 2.53 2898.32c0 2.4-1.57 3.73-1.84 3.95-.21.18-1.43 1.21-3.31 1.21l-2303.199.85c-2.807 0-4.346-1.83-4.608-2.14-.211-.26-1.406-1.68-1.406-3.87l1.462-2898.32a4.59 4.59 0 0 1 1.069-2.922c.198-.235 1.362-1.618 3.483-1.617l2303.199 1.912c1.48.004 2.33 1.238 2.46 1.729.08.294.08.605.16.899-.97.073-1.8.693-2.62 1.314v-1.314H-63.529V2817.29H2239.67V-79.715c1.23-.174 2.46-.348 2.62-1.314Z" clip-rule="evenodd"/></g><defs><clipPath id="a"><path fill="#fff" d="M0 0h2160v2700H0z"/></clipPath></defs>'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn0(colors)));
      
        return render;
      }
}