//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_03_superrare_03_RIDER_03_4 {

using ToColor for bytes4;

function renderFn12(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('ath fill="#000" fill-rule="evenodd" d="M1351.75 1514.17c8.98 4.48 14.98 12.69 17.4 22.2 2.25 8.83 1.27 18.79-3.33 27.96-4.68 9.24-12.29 15.92-20.82 19.36-9.4 3.79-19.91 3.59-29.11-1.18-9.14-4.87-15.25-13.41-17.47-23.29-2.01-8.97-.84-19.02 4.08-28.11 4.92-9 12.56-15.46 21.1-18.63 9.19-3.41 19.36-3.15 28.15 1.69Zm-2.1 3.99c-14.81-7.77-33.78-.84-42.34 15.47-8.55 16.3-3.48 35.85 11.34 43.62 14.81 7.78 33.78.85 42.33-15.46 8.56-16.31 3.48-35.85-11.33-43.63Z" clip-rule="evenodd"/><path fill="#000" d="M1330.34 1549.98c-1.61-.84-2.1-3.08-1.09-4.99 1-1.92 3.12-2.78 4.73-1.94 1.61.85 2.1 3.08 1.1 5-1.01 1.91-3.13 2.78-4.74 1.93Z"/><path fill="#000" fill-rule="evenodd" d="M1334.21 1542.6c1.01.51 1.66 1.47 1.88 2.6.2.99.05 2.1-.47 3.13-.53 1.05-1.35 1.82-2.27 2.25-1.08.51-2.28.53-3.32-.01-1.02-.54-1.6','9-1.55-1.88-2.72-.17-1 0-2.12.55-3.15.56-1.01 1.39-1.76 2.31-2.16 1.06-.46 2.22-.48 3.2.06Zm-.23.45c-1.61-.84-3.73.03-4.73 1.94-1.01 1.91-.52 4.15 1.09 4.99 1.61.85 3.73-.02 4.74-1.93 1-1.91.51-4.15-1.1-5Z" clip-rule="evenodd"/><path fill="',colors[10].toColor(),'" d="M1224.36 1669.75c32.45 17.02 73.76 2.25 92.25-33.01 18.5-35.25 7.19-77.64-25.26-94.67s-73.76-2.25-92.26 33.01c-18.5 35.25-7.18 77.64 25.27 94.67Z"/><path fill="#000" fill-rule="evenodd" d="M1293.57 1537.84c18.04 9.26 30.14 25.8 35 44.86 4.58 17.98 2.63 38.23-6.87 56.71-9.58 18.56-25.08 31.9-42.47 38.63-18.66 7.21-39.5 6.78-57.79-2.73-18.24-9.63-30.46-26.54-35.13-45.99-4.37-18.15-2.17-38.49 7.67-56.93 9.82-18.32 25.38-31.43 42.78-37.87 18.45-6.84 38.94-6.27 56.81 3.32Zm-2.22 4.23c-32.43-17.02-73.77-2.23-92.26 33.01-18.48 35.23-7.16 77.65 25.27 94.67 32.43 17.01 73.77 2.22 92.25-33.01 18.49-35.23 7.17-77.65-25.26-94.67Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".3" fill-rule="evenodd" d="M1207.53 1552.9c-34.76 41.44-22.66 107.7 18.12 122.52 22.72 8.26 60.43 11.99 90.22-33.35','-69.07 32.23-125.69 12.69-108.34-89.17Z" clip-rule="evenodd"/><path fill="#fff" d="M1263.36 1579.9c-14.82-7.78-19.89-27.31-11.33-43.63 8.56-16.31 27.52-23.24 42.34-15.46 14.82 7.77 19.89 27.31 11.33 43.62-8.56 16.32-27.52 23.24-42.34 15.47Z"/><path fill="#000" fill-rule="evenodd" d="M1296.47 1516.81c8.97 4.48 14.97 12.7 17.4 22.2 2.25 8.83 1.27 18.8-3.33 27.96-4.68 9.24-12.29 15.93-20.82 19.37-9.4 3.79-19.92 3.58-29.11-1.19-9.14-4.87-15.25-13.41-17.47-23.29-2.01-8.97-.85-19.02 4.08-28.11 4.92-9 12.56-15.46 21.1-18.63 9.19-3.41 19.36-3.15 28.15 1.69Zm-2.1 4c-14.81-7.77-33.78-.85-42.34 15.46-8.55 16.31-3.48 35.86 11.33 43.63 14.81 7.77 33.79.84 42.34-15.47 8.56-16.31 3.48-35.85-11.33-43.62Z" clip-rule="evenodd"/><path fill="#000" d="M1275.06 1552.62c-1.61-.84-2.1-3.08-1.1-4.99 1.01-1.91 3.13','-2.78 4.74-1.93 1.61.84 2.1 3.08 1.1 4.99-1.01 1.91-3.13 2.78-4.74 1.93Z"/><path fill="#000" fill-rule="evenodd" d="M1278.93 1545.25c1.01.5 1.66 1.46 1.88 2.6.2.98.05 2.09-.47 3.13-.53 1.04-1.35 1.82-2.27 2.24-1.08.51-2.28.53-3.32 0-1.02-.55-1.69-1.55-1.88-2.73-.17-1 0-2.12.55-3.14.56-1.02 1.39-1.77 2.31-2.17 1.06-.46 2.22-.47 3.2.07Zm-.23.45c-1.61-.85-3.73.02-4.74 1.93-1 1.91-.51 4.15 1.1 4.99 1.61.85 3.73-.02 4.74-1.93 1-1.91.51-4.15-1.1-4.99Z" clip-rule="evenodd"/><path fill="#fff" d="M1296.22 1279.24c-13.47-9.93-15.53-30.01-4.59-44.84 10.94-14.83 30.72-18.8 44.19-8.86 13.47 9.93 15.52 30 4.59 44.83-10.94 14.83-30.72 18.8-44.19 8.87Z"/><path fill="#000" fill-rule="evenodd" d="M1338.5 1221.9c8.19 5.79 12.88 14.82 13.83 24.59.89 9.06-1.58 18.76-7.52 27.13-6.03 8.42-14.57 13.88-23.52 15.98','-9.87 2.32-20.23.53-28.6-5.58-8.29-6.2-13.04-15.57-13.73-25.67-.63-9.17 2.05-18.93 8.3-27.17 6.22-8.15 14.75-13.37 23.67-15.21 9.61-1.98 19.62-.18 27.57 5.93Zm-2.68 3.63c-13.46-9.92-33.26-5.95-44.19 8.87s-8.88 34.91 4.59 44.84c13.46 9.93 33.26 5.95 44.19-8.87s8.87-34.91-4.59-44.84Z" clip-rule="evenodd"/><path fill="#000" d="M1311.91 1254.06c-1.46-1.08-1.61-3.37-.32-5.11 1.28-1.73 3.5-2.27 4.97-1.19 1.46 1.08 1.61 3.36.33 5.1-1.29 1.74-3.51 2.28-4.98 1.2Z"/><path fill="#000" fill-rule="evenodd" d="M1316.86 1247.35c.92.65 1.41 1.7 1.46 2.86.04 1-.27 2.07-.94 3.02-.68.95-1.61 1.59-2.58 1.88-1.15.33-2.34.17-3.28-.52-.93-.69-1.44-1.79-1.45-2.98-.02-1.01.32-2.09 1.02-3.02.71-.92 1.64-1.54 2.61-1.79 1.11-.3 2.27-.13 3.16.55Zm-.3.41c-1.47-1.08-3.69-.54-4.97 1.19-1.29 1.74-1.14 4.03.32 5.11 1.47 1.','07 3.69.54 4.98-1.2 1.28-1.74 1.13-4.02-.33-5.1Z" clip-rule="evenodd"/><path fill="'));
      
        return render;
      }

    function renderFn13(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked(colors[10].toColor(),'" d="M1170.67 1356.36c34.35 21.76 84.52 13.41 112.04-18.63 27.53-32.04 21.99-75.65-12.37-97.41-34.35-21.75-84.52-13.4-112.04 18.64-27.53 32.04-21.99 75.65 12.37 97.4Z"/><path fill="#000" fill-rule="evenodd" d="M1272.92 1236.25c18.92 11.75 29.79 29.71 32.16 49.05 2.32 18.82-3.47 38.99-18 56.18-14.4 16.97-34.75 27.83-56.1 31.65-22 3.93-45.01.33-63.7-11.42-19.11-12.16-30.08-30.51-32.25-50.22-2.09-18.98 3.95-39.25 18.82-56.35 14.59-16.71 34.98-27.32 56.31-30.84 21.77-3.59 44.45.13 62.76 11.95Zm-2.57 4.07c-34.34-21.73-84.54-13.38-112.05 18.64-27.51 32.02-21.97 75.67 12.37 97.41 34.33 21.73 84.54 13.38 112.04-18.64 27.51-32.03 21.97-75.67-12.36-97.41Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".3" fill-rule="evenodd" d="M1171.93 1238.32c-47.34 35.69-45.1 103.02-.77 123.85 24.7 11.61 6','7.45 21.02 109.77-19.28-85.23 21.38-146.96-6.52-109-104.57Z" clip-rule="evenodd"/><path fill="#fff" d="M1241.18 1273.47c-13.47-9.93-15.53-30.01-4.59-44.84 10.94-14.83 30.72-18.8 44.19-8.86 13.47 9.93 15.53 30 4.59 44.83-10.94 14.84-30.72 18.81-44.19 8.87Z"/><path fill="#000" fill-rule="evenodd" d="M1283.46 1216.13c8.2 5.79 12.88 14.82 13.83 24.59.89 9.06-1.58 18.77-7.52 27.13-6.03 8.42-14.57 13.88-23.52 15.98-9.86 2.32-20.23.53-28.6-5.58-8.29-6.2-13.04-15.57-13.73-25.67-.62-9.17 2.05-18.93 8.3-27.17 6.22-8.15 14.76-13.37 23.67-15.21 9.61-1.98 19.62-.18 27.57 5.93Zm-2.68 3.63c-13.46-9.92-33.26-5.95-44.19 8.87s-8.87 34.91 4.59 44.84c13.46 9.93 33.26 5.95 44.19-8.87s8.87-34.91-4.59-44.84Z" clip-rule="evenodd"/><path fill="#000" d="M1256.87 1248.29c-1.46-1.08-1.61-3.37-.32-5.11 1.28-1.73 3.5-2','.27 4.97-1.19 1.46 1.08 1.61 3.36.33 5.1-1.29 1.74-3.51 2.28-4.98 1.2Z"/><path fill="#000" fill-rule="evenodd" d="M1261.82 1241.58c.92.65 1.41 1.7 1.46 2.86.04 1-.27 2.07-.94 3.02-.68.95-1.61 1.59-2.58 1.88-1.15.33-2.34.17-3.28-.52-.93-.69-1.44-1.78-1.45-2.98-.02-1.01.32-2.09 1.02-3.02.71-.92 1.64-1.54 2.61-1.79 1.12-.3 2.27-.13 3.16.55Zm-.3.41c-1.46-1.08-3.69-.54-4.97 1.19-1.29 1.74-1.14 4.03.32 5.11 1.47 1.07 3.69.54 4.98-1.2 1.28-1.73 1.13-4.02-.33-5.1Z" clip-rule="evenodd"/><path fill="#fff" d="M1225.1 1708.6c15.73-3.61 25.25-20.58 21.28-37.89-3.98-17.32-19.95-28.43-35.68-24.82-15.73 3.62-25.25 20.58-21.28 37.9 3.98 17.31 19.95 28.42 35.68 24.81Z"/><path fill="#000" fill-rule="evenodd" d="M1209.73 1641.65c9.38-2.35 18.92-.1 26.66 5.34 7.18 5.05 12.71 12.95 15.09 22.54 2.36 9.69.98 19.3','5-3.09 27.22-4.49 8.66-12.29 15.12-22.01 17.43-9.74 2.18-19.6-.21-27.43-6.05-7.11-5.3-12.56-13.4-14.66-23.16-2.04-9.68-.5-19.21 3.76-26.89 4.6-8.27 12.21-14.45 21.68-16.43Zm.97 4.24c-15.72 3.61-25.25 20.59-21.27 37.9 3.97 17.3 19.96 28.42 35.67 24.81 15.72-3.61 25.25-20.59 21.28-37.89-3.98-17.31-19.96-28.43-35.68-24.82Z" clip-rule="evenodd"/><path fill="#000" d="M1220.89 1680.3c1.71-.39 2.72-2.36 2.25-4.39-.46-2.03-2.23-3.35-3.94-2.96-1.71.39-2.71 2.35-2.25 4.38.47 2.03 2.23 3.36 3.94 2.97Z"/><path fill="#000" fill-rule="evenodd" d="M1219.09 1672.47c1.06-.26 2.14.03 3.01.72.76.6 1.35 1.51 1.62 2.59.26 1.1.14 2.18-.25 3.07-.48 1.05-1.34 1.82-2.43 2.08-1.1.24-2.22-.07-3.1-.81a4.715 4.715 0 0 1-1.56-2.65c-.23-1.1-.1-2.17.32-3.04.49-1 1.33-1.74 2.39-1.96Zm.11.48c-1.7.39-2.71 2.35-2.25 4.38.47 ','2.03 2.23 3.36 3.94 2.97 1.71-.39 2.72-2.36 2.25-4.39-.46-2.03-2.23-3.36-3.94-2.96Z" clip-rule="evenodd"/><path fill="',colors[8].toColor(),'" d="M1290.3 1817.98c-34.43 7.91-69.32-16.01-77.91-53.42-8.59-37.41 12.36-74.15 46.79-82.06 34.44-7.91 69.33 16 77.92 53.41 8.59 37.42-12.36 74.16-46.8 82.07Z"/><path fill="#000" fill-rule="evenodd" d="M1258.16 1678.01c19.01-4.56 38.25-.06 53.78 10.84 14.64 10.29 25.93 26.32 30.59 45.82 4.64 19.6 1.7 39.11-6.82 54.95-9.14 17-24.68 29.76-44.05 34.26-19.39 4.38-38.92-.34-54.55-11.64-14.57-10.54-25.73-26.79-30.12-46.44-4.32-19.57-1.16-38.92 7.52-54.56 9.21-16.58 24.55-29.04 43.65-33.23Zm1.03 4.48c-34.42 7.91-55.39 44.68-46.8 82.07 8.59 37.38 43.5 61.32 77.92 53.42 34.41-7.91 55.38-44.68 46.79-82.07-8.59-37.39-43.5-61.32-77.91-53.42Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".3" fill-rule="evenodd" d="M1223.1 1704.96c-32.84 37.72-15.38 96.71 23.14 110.2 21.46 7.52 56.79 14.28 84.94'));
      
        return render;
      }

    function renderFn14(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('-26.99-65.26 29.33-124.47 9.5-108.08-83.21Z" clip-rule="evenodd"/><path fill="#fff" d="M1275.99 1724.63c15.73-3.61 25.25-20.58 21.28-37.89-3.98-17.32-19.95-28.42-35.68-24.81-15.73 3.61-25.25 20.58-21.28 37.89 3.98 17.32 19.95 28.42 35.68 24.81Z"/><path fill="#000" fill-rule="evenodd" d="M1260.62 1657.68c9.38-2.34 18.92-.1 26.66 5.34 7.18 5.05 12.71 12.95 15.09 22.55 2.36 9.69.98 19.34-3.09 27.21-4.49 8.67-12.29 15.13-22.01 17.43-9.74 2.19-19.6-.2-27.43-6.04-7.11-5.31-12.56-13.41-14.66-23.17-2.04-9.68-.5-19.21 3.76-26.88 4.6-8.27 12.21-14.46 21.68-16.44Zm.97 4.25c-15.72 3.61-25.25 20.58-21.27 37.89 3.97 17.3 19.96 28.42 35.67 24.81 15.72-3.61 25.25-20.59 21.28-37.89-3.98-17.31-19.96-28.42-35.68-24.81Z" clip-rule="evenodd"/><path fill="#000" d="M1271.78 1696.33c1.71-.39 2.72-2.35 2.25-4.38-.','46-2.03-2.23-3.36-3.94-2.97-1.7.39-2.71 2.36-2.25 4.39.47 2.03 2.23 3.35 3.94 2.96Z"/><path fill="#000" fill-rule="evenodd" d="M1269.98 1688.5c1.06-.26 2.14.04 3.01.73.76.6 1.35 1.5 1.62 2.58.26 1.1.14 2.18-.25 3.07-.48 1.05-1.34 1.82-2.43 2.08-1.1.24-2.22-.07-3.1-.81-.75-.62-1.33-1.55-1.56-2.65-.23-1.09-.1-2.17.33-3.03.48-1.01 1.32-1.75 2.38-1.97Zm.11.48c-1.7.39-2.71 2.36-2.25 4.39.47 2.02 2.24 3.35 3.94 2.96 1.71-.39 2.72-2.36 2.25-4.39-.46-2.02-2.23-3.35-3.94-2.96Z" clip-rule="evenodd"/><path fill="#fff" d="M1065.39 1720.3c-14.89-3.42-23.91-19.49-20.15-35.88 3.77-16.4 18.89-26.92 33.78-23.5 14.9 3.42 23.92 19.49 20.15 35.88-3.77 16.4-18.89 26.92-33.78 23.5Z"/><path fill="#000" fill-rule="evenodd" d="M1079.95 1656.9c8.96 1.88 16.17 7.73 20.52 15.56 4.04 7.27 5.49 16.3 3.56 25.46-1.99 9.2','4-7.15 16.92-13.88 21.94-7.42 5.53-16.75 7.79-25.98 5.72-9.19-2.18-16.58-8.3-20.83-16.51-3.86-7.45-5.17-16.59-2.93-25.76 2.25-9.09 7.49-16.57 14.29-21.35 7.32-5.15 16.36-7.28 25.25-5.06Zm-.93 4.02c-14.88-3.42-30.02 7.11-33.78 23.5-3.76 16.38 5.26 32.46 20.15 35.88 14.88 3.42 30.02-7.11 33.78-23.5 3.76-16.38-5.26-32.46-20.15-35.88Z" clip-rule="evenodd"/><path fill="#000" d="M1069.37 1693.5c-1.61-.37-2.57-2.23-2.13-4.15.44-1.93 2.11-3.18 3.73-2.81 1.62.37 2.57 2.23 2.13 4.15-.44 1.92-2.11 3.18-3.73 2.81Z"/><path fill="#000" fill-rule="evenodd" d="M1071.08 1686.09c1 .21 1.8.91 2.26 1.85.4.83.53 1.84.31 2.88-.22 1.04-.77 1.92-1.48 2.51-.84.7-1.9 1-2.93.76-1.03-.24-1.85-.97-2.3-1.96-.38-.85-.49-1.87-.24-2.91.25-1.03.81-1.88 1.53-2.45.83-.65 1.85-.93 2.85-.68Zm-.11.45c-1.61-.37-3.28.89-3.73 2.81','-.44 1.92.52 3.78 2.13 4.15 1.62.37 3.29-.89 3.73-2.81.45-1.92-.51-3.78-2.13-4.15Z" clip-rule="evenodd"/><path fill="',colors[11].toColor(),'" d="M991.279 1821.03c39.441 9.06 78.001-12.32 86.141-47.74 8.14-35.43-17.24-71.49-56.67-80.55-39.443-9.06-78.01 12.32-86.147 47.74-8.137 35.43 17.238 71.49 56.676 80.55Z"/><path fill="#000" fill-rule="evenodd" d="M1021.84 1687.96c20.34 4.47 37.22 15.75 48.34 30.43 12.17 16.06 17.4 36.22 12.99 56.22-4.48 20.1-17.9 36.19-35.84 45.64-16.52 8.7-36.9 11.71-57.49 7.05-20.575-4.77-37.622-16.35-48.697-31.39-12.032-16.34-17.07-36.7-12.316-56.76 4.764-19.92 18.267-35.78 36.245-44.92 16.413-8.34 36.528-11.13 56.768-6.27Zm-1.09 4.78c-39.415-9.05-78.013 12.34-86.145 47.74-8.131 35.4 17.264 71.5 56.676 80.55 39.409 9.05 78.009-12.34 86.139-47.74 8.14-35.41-17.26-71.5-56.67-80.55Z" clip-rule="evenodd"/><path fill="#000" fill-opacity=".3" fill-rule="evenodd" d="M952.565 1707.96c-37.899 39.34-21.137 96.73',' 23.319 110.81 24.776 7.83 62.316 16.86 94.806-26.17-61.48 50.21-137.039 12.04-118.125-84.64Z" clip-rule="evenodd"/><path fill="#fff" d="M1017.2 1735.48c-14.89-3.42-23.911-19.49-20.145-35.88 3.765-16.4 18.895-26.92 33.785-23.5 14.89 3.42 23.91 19.49 20.14 35.88-3.76 16.4-18.89 26.92-33.78 23.5Z"/><path fill="#000" fill-rule="evenodd" d="M1031.76 1672.09c8.97 1.87 16.17 7.72 20.52 15.56 4.04 7.27 5.5 16.29 3.56 25.45-1.98 9.25-7.15 16.92-13.88 21.94-7.41 5.53-16.75 7.79-25.97 5.72-9.2-2.18-16.587-8.3-20.838-16.5-3.859-7.45-5.168-16.6-2.932-25.77 2.251-9.08 7.495-16.57 14.29-21.35 7.33-5.15 16.36-7.28 25.25-5.05Zm-.92 4.01c-14.89-3.41-30.02 7.11-33.787 23.5-3.763 16.38 5.267 32.46 20.147 35.88 14.88 3.42 30.02-7.11 33.78-23.5 3.76-16.38-5.26-32.46-20.14-35.88Z" clip-rule="evenodd"/><path fil','l="#000" d="M1021.19 1708.68c-1.62-.37-2.58-2.23-2.13-4.15.44-1.93 2.11-3.18 3.73-2.81 1.61.37 2.57 2.23 2.13 4.15-.45 1.92-2.12 3.18-3.73 2.81Z"/><path fill="#000" fill-rule="evenodd" d="M1022.89 1701.27c1 .21 1.8.91 2.26 1.86.4.82.53 1.83.31 2.87-.22 1.04-.77 1.92-1.48 2.51-.83.7-1.89 1-2.93.77-1.03-.25-1.85-.98-2.3-1.97-.38-.84-.49-1.87-.24-2.91.26-1.02.82-1.88 1.53-2.45.83-.65 1.85-.93 2.85-.68Zm-.1.45c-1.62-.37-3.29.89-3.73 2.81-.44 1.92.51 3.78 2.13 4.15 1.61.37 3.29-.89 3.73-2.81.44-1.92-.52-3.78-2.13-4.15Z" clip-rule="evenodd"/><path fill="#fff" d="M1539.44 1547.01c-14.89-3.42-23.91-19.49-20.15-35.88 3.77-16.4 18.89-26.92 33.79-23.5 14.89 3.43 23.91 19.49 20.14 35.89-3.77 16.39-18.89 26.91-33.78 23.49Z"/><path fill="#000" fill-rule="evenodd" d="M1554 1483.62c8.96 1.87 16.17 7.72 20'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn12(colors),renderFn13(colors),renderFn14(colors)));
      
        return render;
      }
}