//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_03_superrare_07_ARMS_FRONT_01_1 {

using ToColor for bytes4;

function renderFn3(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('7-25.16 29.83-50.28 44.712-75.44.027-.04-.01-.11.004-.16.003-.01 42.589-123.82 34.51-203.55-3.524-34.77-15.231-46.76-20.614-52.31-55.653-57.4-208.502-75.16-265.08 1.47-42.276 57.26 6.011 128.61 5.004 211.22-.031 2.59-.21 17.29-3.107 32.15-9.022 46.29-85.346 131.93-124.166 208.02-36.784 72.1-42.017 131.15-42.058 131.55h-.002c-1.97 42.77-10.233 221.61 72.582 362.75 38.352 65.37 82.004 97.72 103.456 112.34 8.523 3.18 250.006 92.73 372 74.44 119.118-17.87 203.74-93.88 168.435-187.79-.188-.5-1.894-11.73-56.994-28.74-26.078-8.05-52.764-13.87-61.633-15.67-.219-.05-1.564-.33-2.617-.96-.412-.25-2.831-1.7-3.391-4.95-.081-.47-.559-3.25 1.543-5.8.306-.36 2.101-2.54 5.401-2.61 1.798-.03 1.756.39 22.267 3.03 69.205 8.93 140.376 11.76 163.227-1.94 44.344-26.6 68.156-143.65 45.265-210.03-9.494-27.53-23.33','9-35.84-30.618-39.94-33.193-18.69-101.028-28.73-149.07-33.27-13.028-.69-22.663-1.63-26.898-2.11-.523-.05-1.985-.12-3.165-.99-1.538-1.13-2.278-3.22-1.792-5.06.486-1.85 2.161-3.3 4.056-3.53 1.029-.12 13.21.71 20.538 1.28 6.85.54 13.413 1.12 19.686 1.73 49.969 2.04 120.551-1.64 158.399-29.6 59.168-43.71 11.954-189.16-73.32-226.52-.12-.06-.119-.05-1.511-.66h.004Z" clip-rule="evenodd"/><path fill="#fff" fill-rule="evenodd" d="M15.388 2205.25s122.763-85.6 180.196-111.68c13.648-6.2 29.763-.15 35.963 13.5 6.199 13.65.152 29.76-13.496 35.96-57.434 26.09-202.663 62.22-202.663 62.22Z" clip-rule="evenodd"/><path fill="#000" fill-rule="evenodd" d="M15.388 2205.25s122.763-85.6 180.196-111.68c13.648-6.2 29.763-.15 35.963 13.5 6.199 13.65.152 29.76-13.496 35.96-57.434 26.09-202.663 62.22-202.663 62.22Zm14','.827-6.8c27.002-7.94 47.184-14.22 51.716-15.63 57.714-17.95 84.619-27.75 91.889-30.36 27.185-9.77 41.065-16.35 42.393-17.1 11.013-6.25 13.44-21 4.876-30.42-5.335-5.87-14.352-8.36-22.533-4.78-6.02 2.63-28.605 12.44-89.913 49.32-16.986 10.21-31.943 19.55-39.585 24.34-13.498 8.47-24.02 15.07-38.843 24.63Z" clip-rule="evenodd"/><path fill="#fff" fill-rule="evenodd" d="M35.55 2305.87s141.678-48.22 204.091-57.36c14.832-2.17 28.638 8.1 30.811 22.94 2.174 14.83-8.103 28.64-22.935 30.81-62.414 9.15-211.967 3.61-211.967 3.61Z" clip-rule="evenodd"/><path fill="#000" fill-rule="evenodd" d="M35.55 2305.87s141.678-48.22 204.091-57.36c14.832-2.17 28.638 8.1 30.811 22.94 2.174 14.83-8.103 28.64-22.935 30.81-62.414 9.15-211.967 3.61-211.967 3.61Zm16.13-2.42c28.146-.15 49.276-.59 54.022-.69 60.427-1.24 88.9','95-3.2 96.705-3.7 28.826-1.85 43.987-4.33 45.471-4.68 12.313-2.95 18.733-16.45 13.117-27.88-3.499-7.12-11.472-12.01-20.326-10.84-6.513.87-30.933 4.03-100.06 22.47a2528.829 2528.829 0 0 0-44.782 12.42c-15.315 4.39-27.255 7.82-44.147 12.9Z" clip-rule="evenodd"/><path fill="#fff" fill-rule="evenodd" d="M47.401 2404.83s149.378-9.13 211.993-1.48c14.879 1.82 25.484 15.37 23.667 30.25-1.817 14.89-15.372 25.49-30.252 23.68-62.615-7.65-205.407-52.45-205.407-52.45Z" clip-rule="evenodd"/><path fill="#000" fill-rule="evenodd" d="M47.401 2404.83s149.378-9.13 211.993-1.48c14.879 1.82 25.484 15.37 23.667 30.25-1.817 14.89-15.372 25.49-30.252 23.68-62.615-7.65-205.407-52.45-205.407-52.45Zm16.197 1.92c27.188 7.29 47.684 12.44 52.288 13.6 58.616 14.73 86.688 20.38 94.255 21.94 28.294 5.82 43.571 7.43 45.096',' 7.48 12.654.4 22.409-10.93 20.007-23.43-1.497-7.79-7.897-14.61-16.746-15.82-6.511-.88-30.899-4.28-102.442-4.73-19.821-.12-37.453.06-46.473.17-15.931.19-28.351.35-45.985.79Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".2" fill-rule="evenodd" d="M629.774 2557.62s-139.577 123.79-415.838-12.44c-34.131-16.83-150.337-107.38-111.907-238.16-66.328-131.09 1.936-231.87 79.807-396.59 24.097-50.97 18.213-146.14-6.353-212.54-26.548-71.75-93.283-124.46-14.275-224.46-30.841 7.76-62.87 23.3-100.222 73.75l25.283 213.5c-64.56 132.38-131.412 221.06-201.339 251.2l67.846 598.19 177.02-13.61c186.692 50.89 393.711 90.03 499.978-38.84Z" clip-rule="evenodd"/></g><defs><clipPath id="a"><path fill="#fff" d="M0 0h2160v2700H0z"/></clipPath></defs>'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn3(colors)));
      
        return render;
      }
}