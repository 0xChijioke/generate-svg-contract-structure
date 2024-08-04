//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_02_rare_07_ARMS_FRONT_boulderdash_0 {

using ToColor for bytes4;

function renderFn0(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('<g clip-path="url(#a)"><path fill="',colors[0].toColor(),'" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="12.33" d="m318.506 2171.51-609.821 281.24-23.854 254.56 452.954 68.64 133.574-88.04 188.026-369.02-140.879-147.38Z" clip-rule="evenodd"/><path fill="',colors[1].toColor(),'" fill-rule="evenodd" stroke="#fff" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="17.909" d="m-49.99 2922.33 55.27-439.3 131.237-306.44 152.298-189.15 140.602-64.35 221.968 124.53 2.588 313.19-127.604 366.5-306.136 308.78-270.223-113.76Z" clip-rule="evenodd"/><path fill="#fff" fill-opacity=".2" fill-rule="evenodd" d="m413.135 1933.28 234.521 126.37 4.311 240.08c-58.937-115.88-142.639-205.48-256.813-262.75l17.981-103.7Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".3" fill-rule="evenodd" d="M136.521 2176.58s-30.56 68.96-12.315 162.78c5.96 30.64 56.721 62.62 56.721 62.62l-93.122 227.94 132.517 75.39-282.494 41.07 31.718-407.56 107.34-68.25 59.635-93.99Z" clip-rule="evenodd"/><path stroke="#fff" stroke-linecap="round" stroke-linejoin="round" str','oke-miterlimit="1.5" stroke-width="12.001" d="m421.506 1952.18-137.07 221.08 347.167 159.22"/><path stroke="#fff" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="12.001" d="M284.437 2173.26 87.779 2645.3l116.507 37.67m-41.345-519.53 87.904-23.2 25.011 21.99M-2.049 2625.38l89.073 13.39"/><path fill="#000" fill-opacity=".3" fill-rule="evenodd" d="M1996.89 1214.54c-112.15-73.79-231.81-122.52-364.36-128.22l-148.56 151.21-251.23-75.82 3.16-138.14 46.25-243.749 513.72-11.764 201.02 446.483Z" clip-rule="evenodd"/><path fill="',colors[0].toColor(),'" fill-rule="evenodd" stroke="#fff" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="12.845" d="M1888.78 89.857 2509.2 1329.75l-112.13 308.82-877.35-929.724-82.46-497.52 451.52-121.469Z" clip-rule="evenodd"/><path stroke="#fff" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="12" d="m2257.9 793.409-126.64-218.241-136.95 327.133-182.82 109.619 157.16 164.72 150.6-93.52 138.65-289.711Z" clip-rule="evenodd"/><path fill="'));
      
        return render;
      }

    function renderFn1(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked(colors[1].toColor(),'" fill-rule="evenodd" stroke="#fff" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="18.614" d="m1604.04 1087.03 291.98-326.154 196.32-520.262-46.2-336.985-238.25-116.504-439.47 275.956-156.27 459.444 15.35 338.847 114.44 188.908 262.1 36.75Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".1" fill-rule="evenodd" d="m1220.98 496.561 19.92 332.244 261.89 21.802c-161.08-68.886-255.5-186.547-281.81-354.046Z" clip-rule="evenodd"/><path fill="#fff" fill-opacity=".2" fill-rule="evenodd" d="m1391 48.924 324.48 175.274 152.45-85.406 183.79 46.544-85.45-191.479-482.28-3.218L1391 48.924Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".3" fill-rule="evenodd" d="m1225.39 837.236 281.62 14.766 101.58 201.608 287.23-293.199 297.09 410.949 12.76 251.23-459','.68-481.289-146.85 140.309-267.65-35.78-106.1-208.594Z" clip-rule="evenodd"/><path stroke="#fff" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="12" d="m1601.96 1038.9-94.47-179.821-261.99-17.415m279.72-24.998 39.62-132.454-9.24-37.595 29.1-25.881 34.28-137.514-388.36 14.153M1811.9 31.334l-192.92 451.888 60.94 11.174 184.43 247.621m218.73-495.586L1901.76 34.853"/></g><defs><clipPath id="a"><path fill="#fff" d="M0 0h2160v2700H0z"/></clipPath></defs>'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn0(colors),renderFn1(colors)));
      
        return render;
      }
}