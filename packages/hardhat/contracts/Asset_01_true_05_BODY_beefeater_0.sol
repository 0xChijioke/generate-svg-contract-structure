//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_01_true_05_BODY_beefeater_0 {

using ToColor for bytes4;

function renderFn0(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('<path fill="',colors[0].toColor(),'" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="12" d="M684.545 805.988c63.597 0 120.87 27.268 160.73 70.729 35.538 38.748-346.135 296.493-371.183 203.843-4.899-18.12-7.513-37.17-7.513-56.83 0-120.177 97.667-217.742 217.966-217.742Z" clip-rule="evenodd"/><path fill="',colors[1].toColor(),'" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="12" d="M691.815 853.812c49.954 0 96.007 16.824 132.783 45.104 25.354 19.497-51.554 89.075-124.531 168.024-76.081 82.31-149.319 173.26-169.678 150.85-35.125-38.66-56.539-89.97-56.539-146.24 0-120.173 97.666-217.738 217.965-217.738Z" clip-rule="evenodd"/><path fill="',colors[0].toColor(),'" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="12" d="M1418.12 792.895c120.3 0 217.97 97.564 217.97 217.735 0 120.17-418.83-96.597-390.14-133.476 39.9-51.258 102.21-84.259 172.17-84.259Z" clip-rule="evenodd"/><path fill="#fff" fill-opacity=".8" fill-rule="evenodd" d="M1474.92 808.36c.5 1.323-.93 6.159 2.73 11.415 3.78 5.436 12.65 11.338 13.61 15.381 2.23 9.473-7.16 10.705-7.16 10.705 12.37 2.587 20.93 6.724 33.39 12.095 1.63-3.756 2.29-7.856 2.09-12.256-.25-5.781-7.36-11.031-10.27-17.751-.88-2.035 3.51-5.158 2.42-7.267 0 0-39.03-18.218-36.81-12.322Z" clip-rule="evenodd"/><path fill="#fff" fill-opacity=".8" fill-rule="evenodd" d="M1518.4 824.282c.27 1.385-3.63 2.417-.87 8.196 2.85 5.977 13.14 14.717 13.43 18.863.67 9.','709-8.8 9.402-8.8 9.402 11.79 4.558 8.52 3.274 19.96 10.595 2.2-3.443 5.92-6.236 6.44-10.608.68-5.747-9.8-11.42-11.59-18.524-.54-2.151 8.53.86 7.8-1.398 0 0-27.6-22.704-26.37-16.526Z" clip-rule="evenodd"/><path fill="'));
      
        return render;
      }

    function renderFn1(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked(colors[1].toColor(),'" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="12" d="M1424.56 844.586c120.29 0 217.96 97.565 217.96 217.734 0 36.72-9.12 71.34-25.22 101.7-19.25 36.3-88.44-68.2-175.85-144.12-78.73-68.376-178.85-106.195-156.04-125.128 37.76-31.335 86.27-50.186 139.15-50.186Z" clip-rule="evenodd"/><path fill="',colors[0].toColor(),'" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="12" d="M1047.32 695.355c120.3 0 211.45 97.742 217.97 217.739 1.34 24.67-112.07-48.81-223.76-50.38-106.138-1.49-212.171 108.93-212.171 50.38 0-120.174 97.667-217.739 217.961-217.739Z" clip-rule="evenodd"/><path fill="#fff" fill-opacity=".8" fill-rule="evenodd" d="M1068.78 704.759c.77 1.401.39 7.126 5.1 12.386 4.87 5.44 14.84 10.466 16.64 14.854 4.2 10.285-4.76 13.411-4.76 13.411 12.7.636 21.99 3.727 35.38 7.49.8-4.542.58-9.294-.55-14.226-1.47-6.482-9.57-11.097-13.86-18.148-1.29-2.135 2.36-6.473.84-8.653 0 0-42.23-13.362-38.79-7.114Z" clip-rule="evenodd"/><path fill="#fff" fill-opacity=".8" fill-rule="evenodd" d="M1114.89 714.704c.56 1.515-3.05 3.4.88 9.417 4.07 6.223 16.0','4 14.192 17.21 18.819 2.71 10.841-6.66 12.243-6.66 12.243 12.56 2.97 9.07 2.123 21.87 8.278 1.43-4.297 4.49-8.136 4.08-13.17-.55-6.615-12.06-11.085-15.33-18.777-.98-2.329 8.57-.605 7.37-3.019 0 0-31.95-20.539-29.42-13.791Zm-460.363 93.64c.973 1.27 1.456 6.987 6.902 11.482 5.628 4.65 16.238 8.128 18.676 12.197 5.694 9.54-2.704 13.973-2.704 13.973 12.658-1.273 22.307.392 36.105 2.11.116-4.612-.814-9.277-2.67-13.984-2.426-6.188-11.128-9.539-16.421-15.869-1.601-1.917 1.36-6.752-.468-8.68 0 0-43.749-6.893-39.42-1.229Z" clip-rule="evenodd"/><path fill="#fff" fill-opacity=".8" fill-rule="evenodd" d="M701.61 811.278c.779 1.413-2.511 3.818 2.284 9.177 4.954 5.544 17.979 11.633 19.825 16.033 4.306 10.313-4.746 13.101-4.746 13.101 12.855 1.058 9.286.741 22.855 4.913.779-4.464 3.225-8.716 2.065-13.633','-1.535-6.458-13.577-9.156-17.96-16.271-1.324-2.156 8.382-1.882 6.834-4.089 0 0-34.663-15.525-31.157-9.231Z" clip-rule="evenodd"/><path fill="',colors[1].toColor(),'" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="12" d="M1051.16 748.75c93.73 0 173.72 59.233 204.48 142.239 4.16 11.23-102.44-27.38-202.71-23.8-109.765 3.91-214.155 49.05-211.274 39.05 26.185-90.904 110.12-157.489 209.504-157.489Z" clip-rule="evenodd"/><path fill="'));
      
        return render;
      }

    function renderFn2(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked(colors[1].toColor(),'" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="16.178" d="M1079.21 814.213c139.15 0 598.61 141.061 598.61 141.061s248.63 240.056 290.1 370.476c37.17 116.88-281.41 253.78-281.41 391.55 0 138.38 11.88 281.32 11.88 281.32s38.91 189.27 16.01 263.75c-33.72 109.68-75.63 134.95-223.66 229.17 0 0-271.63 184.59-409.12 184.67-136.031.07-362.302-163.78-362.302-163.78-170.781-92.13-207.491-152.06-240.165-243.93-33.906-95.33-21.958-278.05-21.958-278.05s18.8-129.58 14.715-273.15c-2.439-85.74-320.164-204.33-280.565-363.63 36.222-145.73 288.112-390.548 288.112-390.548S915.39 814.213 1079.21 814.213Zm3.28 71.035c-284.606 0-515.67 263.162-515.67 587.302 0 324.15 231.064 587.31 515.67 587.31 284.61 0 515.68-263.16 515.68-587.31 0-324.1','4-231.07-587.302-515.68-587.302Z" clip-rule="evenodd"/><path fill="#fff" fill-opacity=".6" fill-rule="evenodd" d="m1694.75 981.182 254.48 422.598 14.58-64.5c-18.05-117.23-269.06-358.098-269.06-358.098Zm-6.37 548.278-7.96 314.98 45.33 376.55-42.14 106.83-107.26-138.35 34.44-149.04 7.38-283.44 70.21-227.53Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".3" fill-rule="evenodd" d="m1936.59 1420.68-235.17 56.86-10.46 207.61c44.41-93.45 139.58-179.73 245.63-264.47Z" clip-rule="evenodd"/><path stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="10" d="m1494.98 2478.18-35.08-60.01-75.73-37.23-92.46 69.6-65.03 22.49m-518.323 22.08 28.049-55.78 74.367-36.57 92.462 69.6 65.029 22.49m-474.472-191.07 75.687-108.18-25.516-134.12 76.436-8.44 44.751 7','6.47 108.533 17.45m910.517 181.18-109.63-132.54 25.52-134.12-76.44-8.44-44.75 76.47-103.35 21.29m227.83-95.58 13.29-295.11 79.12-279.66 244.48-63.37"/><path fill="',colors[2].toColor(),'" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="6.991" d="M1430.59 2373.56c-49.76-5.44-67.06-9.1-157.32-16.8-70.49-6.02-123.96-56.94-190.23-55.18-66.26 1.76-140.4 56.84-207.359 65.74-61.013 8.12-116.304 11.64-143.455 13.01-11.244.56-180.062 33.15-180.062 33.15 57.249 42.29 116.585 83.1 182.859 119.02 0 0 63.645-8.13 150.663 9.02 67.381 13.27 124.874 76.22 189.884 77.7 65.01 1.47 130.98-57.47 200.17-68.87 90.78-14.95 181.24-19.87 181.24-19.87 57.91-37.38 113.45-78.35 166.82-122.62 0 0-132.92-27.71-193.21-34.3Z" clip-rule="evenodd"/><path stroke="',colors[3].toColor(),'" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="7" d="m586.144 2419.93 27.458-7.12m23.51-4.05 27.458-7.12m23.293-4.56 28.251-2.55m22.178-3.53 28.251-2.56m24.479-1.54 28.251-2.56m22.758-.71 28.251-2.55m23.246.02 27.161-8.18m21.778-9.77 27.16-8.18m207.683-8.6 26.84 9.18m22.8 7.95 27.55 6.75m21.16 2.64 28.27 2.28m25.07.74 28.27 2.28m20.6 3.01 28.28 2.28m19.57 3.22 28.27 2.28m22.26 5.08 28.27 2.28m17.99 7.41 28.15 3.45m16.47 4.66 28.16 3.45m-166.62 103.73 28.21-2.98m-74.41 5.95 28.21-2.98m-74.95 7.47 28.2-2.98m-76.79 9.62 28.21-2.98m-74.85 12.56 27.45-7.15m-70.84 23.01 26.75-9.45m-268.44 3.59-26.746-9.45m-18.544-8.25-27.768-5.8m-20.425-5.01-28.038-4.3m-19.841-2.53-28.362-.44m-20.894-.03-28.365.27"/><path fill="#fff" stroke="#000" stroke-linecap="round" st'));
      
        return render;
      }

    function renderFn3(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('roke-linejoin="round" stroke-miterlimit="1.5" stroke-width="12.139" d="M1079.59 2590.37c71.64-.6 129.72-60.44 129.72-133.65 0-73.21-58.08-132.07-129.72-131.46-71.63.61-129.706 60.45-129.706 133.65 0 73.21 58.076 132.07 129.706 131.46Z"/><path fill="',colors[4].toColor(),'" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="12.461" d="M1079.04 2572.36c58.86 0 106.57-51.7 106.57-115.47 0-63.77-47.71-115.47-106.57-115.47-58.86 0-106.572 51.7-106.572 115.47 0 63.77 47.712 115.47 106.572 115.47Z"/><path fill="',colors[3].toColor(),'" fill-rule="evenodd" d="m989.263 2421.08 3.561 75.97 32.156 43.09-5.88-82.09 17.17 1.5-2.78-25.3-18.12.93-5.14-11.72 32.39-24.07-4.81-37.56-48.547 59.25Z" clip-rule="evenodd"/><path fill="#000" fill-rule="evenodd" d="m989.263 2421.08 48.547-59.25 4.81 37.56-32.39 24.07 5.14 11.72 18.12-.93 2.78 25.3-17.17-1.5 5.88 82.09-32.156-43.09-3.561-75.97Zm7.118 2.36 3.335 71.14 16.574 22.21-4.17-58.24c-.14-2.04.61-4.05 2.07-5.48a6.993 6.993 0 0 1 5.52-1.99l8.67.75-1.13-10.25-11.52.59a6.99 6.99 0 0 1-6.77-4.18l-5.14-11.72a6.98 6.98 0 0 1 2.23-8.43l29.1-21.63-2.22-17.38-36.549 44.61Z" clip-rule="evenodd"/><path fill="',colors[3].toColor(),'" fill-rule="evenodd" d="m1039.38 2404.66-4.78 27.05 20.18-2.88-6.63 85 43.33-2.27-12.11-83.41 21.53 1.44-8.58-29.65-52.94 4.72Z" clip-rule="evenodd"/><path fill="#000" fill-rule="evenodd" d="m1039.38 2404.66 52.94-4.72 8.58 29.65-21.53-1.44 12.11 83.41-43.33 2.27 6.63-85-20.18 2.88 4.78-27.05Zm5.96 6.5-2.16 12.26 10.61-1.52c2.1-.3 4.23.37 5.78 1.83a7 7 0 0 1 2.19 5.64l-6.01 77.06 27.7-1.46-11-75.82c-.31-2.09.35-4.2 1.79-5.75a6.926 6.926 0 0 1 5.6-2.23l11.56.77-4.2-14.52-41.86 3.74Z" clip-rule="evenodd"/><path fill="',colors[3].toColor()));
      
        return render;
      }

    function renderFn4(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('" fill-rule="evenodd" d="m1096.75 2357.84 16.08 155.49 18.89-37.37 9.55 56.4 32.29-99.33-22.39-38.58-11 43.2-5.71-39.4-9.36 28.21-.34-53.33-28.01-15.29Z" clip-rule="evenodd"/><path fill="#000" fill-rule="evenodd" d="m1096.75 2357.84 28.01 15.29.34 53.33 9.36-28.21 5.71 39.4 11-43.2 22.39 38.58-32.29 99.33-9.55-56.4-18.89 37.37-16.08-155.49Zm8.34 12.52 12.25 118.54 8.14-16.1a7.003 7.003 0 0 1 7.29-3.76c2.99.45 5.35 2.77 5.85 5.75l4.8 28.33 22.52-69.28-12.22-21.05-6.77 26.58a7.013 7.013 0 0 1-7.15 5.27 7.009 7.009 0 0 1-6.56-5.99l-1.46-10.1-.04.11a7.004 7.004 0 0 1-7.74 4.71 6.999 6.999 0 0 1-5.9-6.87l-.32-49.21-12.69-6.93Z" clip-rule="evenodd"/><path fill="',colors[0].toColor(),'" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="11.932" d="M1350.47 2500.62c19.45 0 35.21-17.89 35.21-39.95 0-22.06-15.76-39.94-35.21-39.94-19.45 0-35.21 17.88-35.21 39.94s15.76 39.95 35.21 39.95Z"/><path fill="',colors[3].toColor(),'" fill-rule="evenodd" d="m1352.2 2442.51 4.97 14.78h16.1l-13.02 9.13 4.97 14.78-13.02-9.13-13.02 9.13 4.97-14.78-13.02-9.13h16.1l4.97-14.78Z" clip-rule="evenodd"/><path fill="',colors[0].toColor(),'" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="2.88" d="M1048.62 2543.78c4.87 0 8.82-4.16 8.82-9.3 0-5.14-3.95-9.3-8.82-9.3-4.86 0-8.81 4.16-8.81 9.3 0 5.14 3.95 9.3 8.81 9.3Zm28.43 10.72c4.87 0 8.81-4.16 8.81-9.3 0-5.14-3.94-9.3-8.81-9.3-4.87 0-8.81 4.16-8.81 9.3 0 5.14 3.94 9.3 8.81 9.3Zm28.04-12.36c4.86 0 8.81-4.17 8.81-9.31 0-5.13-3.95-9.3-8.81-9.3-4.87 0-8.82 4.17-8.82 9.3 0 5.14 3.95 9.31 8.82 9.31Z"/><path fill="',colors[0].toColor()));
      
        return render;
      }

    function renderFn5(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="11.932" d="M797.492 2498.31c19.448 0 35.213-17.88 35.213-39.94s-15.765-39.94-35.213-39.94-35.213 17.88-35.213 39.94 15.765 39.94 35.213 39.94Z"/><path fill="',colors[3].toColor(),'" fill-rule="evenodd" d="m796.861 2436.83 4.97 14.78h16.1l-13.02 9.13 4.97 14.78-13.02-9.13-13.02 9.13 4.97-14.78-13.02-9.13h16.1l4.97-14.78Z" clip-rule="evenodd"/><path fill="',colors[5].toColor(),'" fill-rule="evenodd" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="10" d="m277.028 1532.46-2.663-81.03 57.227-105.63 89.541 16.65-53.344 105.4-.362 141.04-90.399-76.43Zm327.234-603.498-89.752 75.328-163.717 301.87 88.824 15.1 128.306-238.27 198.453-200.375-162.114 46.347Z" clip-rule="evenodd"/><path stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="10" d="m544.618 2058.67-1.207-293.66-79.118-279.66-259.532-45.8m1738.429-38.31-271.32-448.533-110.27 180.233 137.05 345.69-10.88 204.01"/><path stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="10" d="m201.847 1423.72 286.375-466.107 110.269 180.237-137.054 345.69 10.876 204.01"/><path fill="gray','" fill-rule="evenodd" stroke="#000" stroke-linejoin="round" stroke-miterlimit="2" stroke-width="12.002" d="M1081.47 844.879c306.01 0 541.3 276.421 541.3 623.731 0 217.04-37.09 459.22-183.98 622.38-88.15 97.92-238.96 129.97-351.66 135.13-93.655 4.29-232.778-6.04-307.336-74.21-168.793-154.32-241.664-436.46-241.664-677.36 0-347.3 237.336-629.671 543.34-629.671Zm0 31.897c-289.578 0-523.61 267.774-523.61 596.434 0 328.67 234.032 596.44 523.61 596.44 165.91 0 313.58-87.9 409.46-224.78 71.46-102.04 114.15-231.3 114.15-371.66 0-328.66-234.03-596.434-523.61-596.434Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".3" fill-rule="evenodd" d="M187.89 1361.48c-32.254-47.5 272.371-371.445 272.371-371.445L306.228 1267.03l-107.659 173.4 261.075 42.23 85.213 292.56-3.874 288.21 25.487 130.06-14.802 4','5.25c49.217 63.52 64.781 117.69 152.322 130.75 30.139 4.5 4.601 15.29 19.819 19.2 9.219 2.37 49.539-8.12 63.668 5.07 25.855 24.14 51.494 94.09 91.463 139.74 3.691 4.22 87.827 47.49 82.852 45.8-164.632-55.96 2.059 63.5 54.638 86.84-101.303-37.94-197.669-65.16-275.015-133.92-49.994-23.7-128.469-62.44-179.178-114.01-31.829-32.37-40.711-71.1-62.162-110.25-55.117-150.36-42.805-362.1-30.266-603.31l-268.874-246.73-13.045-96.44Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".3" fill-rule="evenodd" d="M934.486 2045.82s-21.96 17.78-33.953 14.83c-17.432-4.29-70.64-40.58-70.64-40.58s-45.993-39.14-73.308-17.86c-15.638 12.18-28.236 101.63-28.236 101.63-45.698-29.25-112.315-122.17-138.032-183.92-41.742-100.24-66.121-238.67-83.744-367.94-13.218-307.39 108.692-478.64 286.365-619.599l-1.749 47.679c-','162.892 110.29-228.364 305.78-224.291 562.09 35.86 241.67 166.589 402.58 367.588 503.67Z" clip-rule="evenodd"/><path stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="8" d="m1097.86 2226.68-1.56-51.37 18.27-8.31-.26-20.04-21.07-7.56c-4.65-16.24-3.47-55.81 2.1-75.31"/><path fill="#fff" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="8.253" d="M1763.4 1162.53c-8.55 51.67-52.54 87.7-98.27 80.48-45.73-7.22-75.88-54.95-67.33-106.62 8.54-51.67 52.54-87.7 98.27-80.48 45.73 7.22 75.87 54.95 67.33 106.62Z"/><path fill="'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn0(colors),renderFn1(colors),renderFn2(colors),renderFn3(colors),renderFn4(colors),renderFn5(colors)));
      
        return render;
      }
}