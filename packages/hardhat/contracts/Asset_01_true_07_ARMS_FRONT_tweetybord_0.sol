//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_01_true_07_ARMS_FRONT_tweetybord_0 {

using ToColor for bytes4;

function renderFn0(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('<g fill-rule="evenodd" clip-path="url(#a)" clip-rule="evenodd"><path fill="',colors[0].toColor(),'" stroke="#000" stroke-linecap="square" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="9" d="M-17.84 1190.65c25.816 38.56 297.871 669.21 297.871 669.21L64.857 1750.93l582.524 819.46-572.532-367 285.423 651.15-501.014-429.95-144.257-1673.865 469.282 495.465s-227.94-94.11-202.124-55.54Z"/><path fill="#fff" d="m188.692 1974.93 322.707 441.34-180.53-217.52-142.177-223.82ZM44.4 2211.27l224.51 498.52-131.669-250.14-92.84-248.38ZM2.753 1294.68l224.51 498.51-131.67-250.14-92.84-248.37Z"/><path fill="',colors[0].toColor(),'" stroke="#000" stroke-linecap="square" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="9" d="M-83.916 1187.23c21.688 41.03 227.038 696.44 227.038 696.44l-202.75-130.61 494.62 875.32-531.491-424.26 216.524 677.19-453.844-479.47-169.235-1942.372c177.736-111.595 198.927 262.558 198.927 262.558l415.504 541.354s-216.981-117.18-195.293-76.15Z"/><path fill="#fff" d="M-82.374 1250.92 82.14 1772.31l-101.434-263.85-63.08-257.54Zm91.619 675.15 264.459 478.52-151.651-238.56L9.245 1926.07Z"/><path fill="#000" d="m-91.278 2014.18 25.551-19.85 238.979 332.69-1.234.96-263.296-313.8Zm152.814-19.24 25.028-20.51 247.514 326.39-1.209.99-271.333-306.87Zm-155.303-625.31 26.78-18.16 216.998 347.42-1.293.88-242.485-330.14Zm28.801 908.87 26.78-18.16 216.997 347.42-1.293.88-242.484-330.14Z"/><path fi','ll="',colors[0].toColor(),'" stroke="#000" stroke-linecap="square" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="9.998" d="M2681.18 1855.62 2286.65 187.871c-22.83 269.24-92.65 535.417-243.69 796.303l273.18-172.429C2211.13 1170.23 2041.64 1574.36 1830.78 1934l579.25-497.86-631.6 1157.79 902.75-738.31Z"/><path fill="#000" d="m2234.75 1390.15 25.43 20.01-265.2 312.19-1.23-.97 241-331.23Zm-18.1 626.77 25.43 20-265.2 312.19-1.23-.96 241-331.23Z"/><path fill="'));
      
        return render;
      }

    function renderFn1(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked(colors[0].toColor(),'" stroke="#000" stroke-linecap="square" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="9" d="M2865.54 2151.32 2436.89 269.875c-165.72-158.846-160.19 205.266-160.19 205.266l-282.07 891.769s419.88-409.092 402.65-367.837c-17.22 41.257-412.42 1072.287-412.42 1072.287l591.01-495.04-656.58 1042.03 471.23-322.22-449.74 440.11 924.76-584.92Z"/><path fill="#fff" d="m2293.38 677.328-224.51 498.512 131.67-250.137 92.84-248.375Zm-69.47 508.712-224.51 498.51 131.67-250.14 92.84-248.37Zm12.67 249.69-174.64 518.1L2168.49 1692l68.09-256.27Zm-72.81 527.04-277.1 471.31 157.94-234.43 119.16-236.88Zm122.65 88.02-277.1 471.32 157.95-234.44 119.15-236.88Zm177.38 228.79-406.25 365.9 221.25-175.94 185-189.96Z"/><path fill="#000" d="m2318.62 863.457 25.43 20.007-265.19 312.186-1.23-.96 240.99-331.23','3Zm3.71 729.253 25.43 20.01-265.19 312.19-1.23-.97 240.99-331.23Zm-37.34 577.81 25.43 20.01-265.19 312.19-1.23-.97 240.99-331.23Z"/></g><defs><clipPath id="a"><path fill="#fff" d="M0 0h2160v2700H0z"/></clipPath></defs>'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn0(colors),renderFn1(colors)));
      
        return render;
      }
}