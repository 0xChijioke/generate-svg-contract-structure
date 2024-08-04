//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_03_superrare_06_KANJI_01_0 {

using ToColor for bytes4;

function renderFn0(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('<g clip-path="url(#a)"><path fill="',colors[0].toColor(),'" fill-rule="evenodd" d="M2180.01-20.969V2724.42H-34.668V-20.969H2180.01Zm-100 100H65.332V2624.42H2080.01V79.032Z" clip-rule="evenodd"/><path stroke="',colors[1].toColor(),'" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="15.996" d="M217.295 343.648c-5.07 1.389-9.581.112-13.816-2.471 11.047-.015 22.092 1.119 33.141-5.603l-32.442-4.956 36.973 1.982-42.963-9.74 12.148-2.854 18.623-1.307 7.415 2.073c5.551-2.576 10.875-1.983 16.155-.796l-9.961 6.451"/><path stroke="',colors[2].toColor(),'" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="15.996" d="m281.65 247.578-1.459 6.309c4.272.157 8.507-1.269 12.696-4.566l1.231-5.182 6.114-7.713c-25.369 7.795-51.13 17.956-78.138 15.26 24.823-4.22 42.545-8.862 62.095-14.291l-15.398 18.287-22.603 5.437c4.369 3.214 11.675 3.026 18.708 3.154"/><path stroke="',colors[3].toColor()));
      
        return render;
      }

    function renderFn1(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="15.996" d="M296.7 279.621c-.941 1.63-1.282 3.29-.549 4.979l-15.819 9.05 14.588.03-11.101 7.923 14.243 1.615 7.15-.203 9.26 3.522"/><path stroke="',colors[4].toColor(),'" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="15.996" d="M362.746 283.113c6.881 2.208 12.17 4.672 15.616 7.435l-42.452 2.651c7.725 4.213 18.368 5.13 29.711 5.257l-8.339 4.657c-2.679 2.899-6.256 4.1-10.352 4.325"/><path stroke="',colors[5].toColor(),'" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="15.996" d="M408.145 229.883c-11.267-4.018-22.996-3.409-34.864-1.419l28.85 6.166-33.116-1.029-8.695 11.896 39.875-1.84c-4.996 6.594-12.757 8.644-23.115 6.421l-16.643 2.546 12.243 3.034"/><path stroke="',colors[6].toColor(),'" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="15.996" d="m447.088 303.145-8.438 6.068-33.004 2.576c-1.551 8.606 20.879 3.582 37.625 1.787l-41.533 11.175 38.489-3.935-29.097 9.575 24.155-1.907c-4.51 10.416-9.189 13.142-13.917 6.075"/><path stroke="',colors[7].toColor()));
      
        return render;
      }

    function renderFn2(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="15.996" d="M406.479 357.789c-9.612 5.017-16.857 11.348-22.76 20.165l7.558.713c1.289-6.106 10.395-10.506 4.618-16.162-6.382-.788-12.922-1.809-17.204.429 9.887 2.087 16.019 6.496 22.233 10.859"/><path stroke="',colors[8].toColor(),'" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="15.996" d="M374.056 401.871c-3.362 1.397-4.822 3.597-3.771 6.864 1.858 3.56 6.317 4.852 13.043 4.168"/><path stroke="',colors[9].toColor(),'" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="15.996" d="M426.199 407.077c20.684 3.897 20.461-9.989 37.631-10.852l-4.634-10.334c-10.881 3.852-23.211 8.238-26.553 12.947l23.099 5.107c-2.133 4.108-6.256 5.595-10.736 6.601l-7.15-18.557"/><path stroke="',colors[10].toColor(),'" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="15.996" d="M206.426 388.497c60.187 8.291 46.697-31.535 54.486-41.388 13.59-9.485 33.493-10.056 50.359-5.572 12.038 3.199 22.788 8.171 27.406 17.971 5.169 10.972.685 22.748-4.497 33.713-3.613 7.645-8.403 16.65-7.094 21.066 4.522 15.245 21.201 27.524 48.478 32.368 0 0 15.95 5.332 24.25 5.918 11.583.811 45.248-1.044 45.248-1.044 31.267-3.627 37.08-20.57 40.902-38.557l-5.159-73.643-9.02-27.36-17.641-44.159c-12.034-17.521-24.75-34.696-37.785-51.714-10.906-8.847-26.359-13.879-44.542-16.635l-72.597 1.367c-19.559.586-38.982 3.342-58.269 8.276-7.789 2.981-16.606 7.578-26.996 14.66-8.988 6.113-16.484 13.953-23.227 22.988-4.71 6.308-7.028 13.075-11.078 20.247.55 2.651-2.294 6.444-3.551 10.724-1.017 3.463-.66 8.367-','2.649 12.978-.111 13.646-.982 26.894-.181 40.209.274 7.337 1.04 14.84 3.086 22.778 3.455 7.961 8.406 15.719 13.8 22.913 5.687 7.593 12.497 17.236 16.271 11.896Z" clip-rule="evenodd"/><path stroke="'));
      
        return render;
      }

    function renderFn3(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked(colors[10].toColor(),'" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="15.996" d="M177.478 188.179c-13.544-5.993-25.38-6.526-37.412-7.675"/><path stroke="',colors[10].toColor(),'" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="15.551" d="M146.5 280.284c-8.066-2.54-15.115-2.766-22.281-3.253"/><path stroke="',colors[10].toColor(),'" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="1.5" stroke-width="15.996" d="M229.183 167.851c.665-3.147.654-6.376-1.456-9.816m82.176-2.246c-.448-1.998-.686-4.048-.268-6.219m132.388 20.831c3.239-3.034 6.524-6.563 9.875-10.792m53.832 21.881c5.595-2.419 11.521-5.272 19.174-10.439m-38.529 93.881c10.326-1.878 18.159-6.789 26.616-10.942l2.899-2.388m-4.64 120.574c3.597 3.139 13.586-.578 21.073-.503m-13.78 105.268c7.735 3.102 11.934 10.071 23.236 10.034M193.36 417.938c-.392 4.813-2.596 10.469-5.813 16.582m-34.142-54.637c-2.831 6.977-6.718 9.125-10.452 11.971m214.681 104.501c-3.873 6.457-3.252 10.855-3.282 15.55m82.527-20.124c3.706 6.546 4.611 19.194 4.519 23.884"/></g><defs><clipPath id="a"><path fill="#fff" d="M0 0h2160v2700H0z"/></clipPath></defs>'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn0(colors),renderFn1(colors),renderFn2(colors),renderFn3(colors)));
      
        return render;
      }
}