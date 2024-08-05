//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_03_superrare_05_BODY_03_8 {

using ToColor for bytes4;

function renderFn32(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('9.27 32.86 15.03 57.76 20.44 8.05 1.75-32.39 37.4-36.05 55.06-2.54 12.26 83.15-14.69 88.33-16.58l69.3-117.52c44.06-13.08 110.45-45.15 129.6-73.18Zm-184.06-479.38 26.51 15.51c17.05 44.33 38.11 81.4 69.19 100.4l-15.53 9.16 12.89 31.05-31.57-9.89-38.36-9.57c-40.35-33.29-46.39-70.19-28.67-105.26l5.54-31.4ZM662.909 889.296l-22.578 5.822-48.911 51.103-41.721-6.611-18.996-41.117 3.503-15.933 78.868 1.547 27.016-31.377 22.819 36.566Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".3" d="M1510.97 955.173c24.02 0 43.49-17.357 43.49-38.768s-19.47-38.768-43.49-38.768c-24.02 0-43.49 17.357-43.49 38.768s19.47 38.768 43.49 38.768Z"/><path fill="#000" fill-rule="evenodd" d="M1510.97 877.637c24.01 0 43.49 17.372 43.49 38.769s-19.48 38.768-43.49 38.768c-24 0-43.48-17.371-43.48-38.768 0-21.397 19.48-3','8.769 43.48-38.769Zm0 2.223c-26.69.302-45.89 22.9-39.13 45.366 5.62 18.654 27.31 30.1 48.74 25.485 21.78-4.69 35.43-24.358 29.45-44.026-2.3-7.53-7.32-14.142-14.1-18.907-10.97-7.71-22.26-7.856-24.96-7.918Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".3" d="M1534.15 868.598c18.76 0 33.97-12.667 33.97-28.294 0-15.626-15.21-28.294-33.97-28.294-18.76 0-33.96 12.668-33.96 28.294 0 15.627 15.2 28.294 33.96 28.294Z"/><path fill="#000" fill-rule="evenodd" d="M1534.16 812.01c18.75 0 33.96 12.678 33.96 28.295 0 15.616-15.21 28.294-33.96 28.294s-33.96-12.678-33.96-28.294c0-15.617 15.21-28.295 33.96-28.295Zm0 2.214v.008c-20.38.249-35.52 16.659-29.73 32.808 5.3 14.797 25.88 22.397 43.18 15.609 14.47-5.675 21.34-19.58 15.28-32.053-1.88-3.891-5.29-8.049-10.71-11.315-8.09-4.875-16.02-4.973-18.02-','5.057Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".3" d="M1603.31 1174.55c10.59 0 19.17-7.65 19.17-17.09 0-9.43-8.58-17.08-19.17-17.08-10.58 0-19.16 7.65-19.16 17.08 0 9.44 8.58 17.09 19.16 17.09Z"/><path fill="#000" fill-rule="evenodd" d="M1603.31 1140.38c10.59 0 19.17 7.65 19.17 17.08 0 9.44-8.58 17.09-19.17 17.09-10.57 0-19.16-7.65-19.16-17.09 0-9.43 8.59-17.08 19.16-17.08Zm.01 2.21v.01c-8.55.11-16.93 6.82-16.1 15.75.71 7.7 9.13 14.1 19.14 12.5 8.86-1.41 15.56-9.54 12.23-18.32-1.52-3.98-4.85-6.31-5.41-6.7-4.4-3.08-8.81-3.17-9.86-3.24Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".3" d="M1623.63 1230.36c10.59 0 19.17-7.65 19.17-17.09s-8.58-17.09-19.17-17.09c-10.58 0-19.17 7.65-19.17 17.09s8.59 17.09 19.17 17.09Z"/><path fill="#000" fill-rule="evenodd" d="M1623.63 1196','.18c10.58 0 19.17 7.66 19.17 17.09s-8.59 17.09-19.17 17.09c-10.58 0-19.16-7.66-19.16-17.09s8.58-17.09 19.16-17.09Zm.01 2.22c-8.55.12-16.93 6.82-16.1 15.75.71 7.71 9.12 14.1 19.14 12.51 8.86-1.41 15.55-9.55 12.22-18.33-1.51-3.98-4.84-6.31-5.41-6.7-4.39-3.07-8.8-3.16-9.85-3.23Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".3" d="M1637.31 1288.01c10.59 0 19.17-7.65 19.17-17.09s-8.58-17.09-19.17-17.09c-10.58 0-19.17 7.65-19.17 17.09s8.59 17.09 19.17 17.09Z"/><path fill="#000" fill-rule="evenodd" d="M1637.31 1253.83c10.58 0 19.17 7.66 19.17 17.09s-8.59 17.09-19.17 17.09c-10.58 0-19.16-7.66-19.16-17.09s8.58-17.09 19.16-17.09Zm.01 2.22c-8.55.12-16.93 6.82-16.1 15.75.71 7.71 9.12 14.11 19.14 12.51 8.86-1.41 15.55-9.54 12.22-18.33-1.51-3.98-4.84-6.3-5.41-6.7-4.39-3.07-8.8-3.16-9.85-3.23Z" ','clip-rule="evenodd"/><path fill="#000" fill-opacity=".3" d="M1647.23 1350.13c10.58 0 19.16-7.65 19.16-17.09 0-9.43-8.58-17.08-19.16-17.08-10.59 0-19.17 7.65-19.17 17.08 0 9.44 8.58 17.09 19.17 17.09Z"/><path fill="#000" fill-rule="evenodd" d="M1647.23 1315.96c10.58 0 19.17 7.65 19.17 17.08 0 9.44-8.59 17.09-19.17 17.09-10.58 0-19.16-7.65-19.16-17.09 0-9.43 8.58-17.08 19.16-17.08Zm.01 2.21v.01c-8.56.11-16.93 6.82-16.11 15.75.72 7.7 9.13 14.1 19.14 12.5 8.87-1.41 15.56-9.54 12.23-18.32-1.51-3.98-4.84-6.31-5.41-6.7-4.39-3.08-8.8-3.17-9.85-3.24Z" clip-rule="evenodd"/><path fill="#fff" fill-rule="evenodd" d="m1183.85 676.961-40.95-74.738 35.36 30.51-31.13-112.937 25.9 47.248-23.79-90.214 20.62 33.46-13.65-67.681 27.54 64.787 16.99-28.599-3.85 47.512 12.94-10.733-12.72 45.327 20.18-19.399-10.6 3','6.842 17.79-.394-14.52 27.243 14.63 2.775-11.6 19.026 15.88 1.362-21.97 50.939 15.79-7.885-18.77 45.488-8.63-21.32.45 38.545-13.47-42.879-12.77-16.477 14.35 2.192Z" clip-rule="evenodd"/><path fill="#000" fill-rule="evenodd" d="m1183.85 676.961-40.95-74.738 35.36 30.51-31.13-112.937 25.9 47.248-23.79-90.214 20.62 33.46-13.65-67.681 27.54 64.787 16.99-28.599-3.85 47.512 12.94-10.733-12.72 45.327 20.18-19.399-10.6 36.842 17.79-.394-14.52 27.243 14.63 2.775-11.6 19.026 15.88 1.362-21.97 50.939 15.79-7.885-18.77 45.488-8.63-21.32.45 38.545-13.47-42.879-12.77-16.477 14.35 2.192Zm1.8-.991c.06.227.18.437.23.664.21.822-.49 2.361-1.99 2.39-1.14.023-1.09-.304-13.72-3.861 11.51 12.367 12.06 11.907 13.94 14.979 1.88 3.083.91 3.445 11.58 43.653-.87-12.867-1.86-25.726-2.73-38.594-.02-.353.65-1.945 2.27-1','.994 1.09-.033 1.72.664 1.83.782 1.24 1.366.53 1.706 6.86 21.981l18.15-43.894c-4.84 3.197-9.58 6.534-14.42 9.731-.18.12-1.87.372-2.86-.939-.69-.92-.51-2.069-.46-2.18 7.68-16.52 15.48-32.984 23.16-49.504-5.07.111-10.13.386-15.2.497-.21.005-1.83-.651-2.06-2.323-.08-.614.14-1.337.17-1.389 4.2-5.812 8.52-11.533 12.71-17.345-4.71-.311-9.44-.445-14.15-.756-.14-.009-1.52-.652-1.81-2.128-.12-.627.05-1.385.09-1.445 5.28-8.549 10.69-17.018 15.98-25.567-5.67.787-11.3 1.753-16.96 2.541-.15.019-1.68-.334-2.3-1.766-.26-.609-.24-1.416-.22-1.483 4.33-11.965 8.81-23.874 13.14-35.839-6.06 7.051-11.99 14.222-18.05 21.273-.11.13-1.58.935-3.06.22a3 3 0 0 1-1.73-2.541c-.02-.178-.06-.367 0-.536 5.04-14.763 10.24-29.471 15.28-44.233-10.14 12.066-10.02 12.211-10.84 12.685-1.79 1.038-4.14.059-4.66-1.943-.04-.171-.1','1-.348-.09-.523 2.21-15.707 4.58-31.391 6.79-47.097-4.74 9.938-9.46 19.891-14.21 29.83-.21.446-1.75 1.738-3.58 1.128-.99-.333-1.65-1.218-1.68-1.312-8.3-22.053-16.45-44.163-24.74-66.216 5.5 22.445 11.16 44.852 16.66 67.298.05.202-.09 1.866-1.49 2.72-.18.109-1.23.752-2.6.294-2.23-.75-1.66-1.523-19.47-35.992 8.78 29.866 17.7 59.692 26.48 89.558.08.284-.05 2.042-1.58 2.801-1.59.79-3.27-.163-3.77-1.187-7.78-16.098-15.51-32.223-23.29-48.32 11.12 37.478 22.35 74.924 33.46 112.402.11.367-.15 2.08-1.7 2.566-1.02.316-1.98-.155-2.33-.488-11.18-10.664-22.33-21.365-33.52-32.029l42.49 73.431Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".2" fill-rule="evenodd" d="M1617.07 1905.29c-46.89 60.57-19.37 112.04 6.72 145.41l-45.25-38.96 20.67 105.86-37.39-95.6 16.24 167.74-43.78-155.97-25.45 60.18-10.'));
      
        return render;
      }

    function renderFn33(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('2-53.62c27.87-56.33 78.87-116.27 118.44-135.04Z" clip-rule="evenodd"/></g><defs><clipPath id="a"><path fill="#fff" d="M0 0h2160v2700H0z"/></clipPath></defs>'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn32(colors),renderFn33(colors)));
      
        return render;
      }
}