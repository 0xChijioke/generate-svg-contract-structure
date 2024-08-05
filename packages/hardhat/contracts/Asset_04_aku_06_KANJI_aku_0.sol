//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_04_aku_06_KANJI_aku_0 {

using ToColor for bytes4;

function renderFn0(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('<g fill-rule="evenodd" clip-path="url(#a)" clip-rule="evenodd"><path fill="',colors[0].toColor(),'" d="M2187.27-11.832V2711.83H-27.268V-11.832H2187.27Zm-95.07 95.064H67.796V2616.77H2092.2V83.232Z"/><path fill="',colors[1].toColor(),'" fill-opacity=".6" d="M178.696 1.697S33.646 90.27 12.261 131.595c-9.864 19.061 1.74 42.898 1.84 64.361.1 21.687-7.023 44.612-1.237 65.759 6.555 23.959 40.569 77.995 40.569 77.995S6.399 395.643 2.468 424.992c-3.931 29.347 7.79 76.62 27.379 90.804C49.436 529.981 120 510.098 120 510.098l44.758 5.69-.871 45.419 95.868 65.615s70.908 30.206 108.343 29.623c39.278-.612 81.552-29.385 81.552-29.385l124.09-23.36s84.964 63.571 143.275 13.93c39.938-34 25.631-106.913 53.236-155.767 30.723-54.371 74.633-141.864 111.202-173.743 24.004-20.925 76.448-15.32 108.215-17.533 41.211-2.87 109.661 31.329 154.591 6.016 45.23-25.48 77.8-105.968 116.78-158.897C1302.98 60.74 1395.95-65.19 1395.95-65.19l-106.47-19.538s-69.99 156.232-94.01 183.561c-11.84 13.469-51.4-1.704-50.09-19.585 1.6-22.066 59.74-112.803 59.74-112','.803l-47.76-51.902s-30.9 159.639-68.16 207.608c-35.75 46.031-108.2 65.607-155.369 80.202-40.715 12.597-118.031 27.652-127.644 7.364-9.614-20.287 34.461-95.398 69.964-129.089C913.131 45.538 1028.06-.826 1028.06-.826l33.19-142.278-136.578 38.347s-46.235 85.742-71.535 111.74c-21.308 21.896-58.003 41.992-80.266 44.252-20.402 2.07-53.315-30.698-53.315-30.698l29.681-75.344S672.326-99.84 648.465-86.045c-23.861 13.797-25.033 95.01-42.395 114.01-13.889 15.203-56.095 13.764-61.774 0-5.68-13.763 41.413-70.25 27.697-82.582-13.716-12.333-109.994 8.587-109.994 8.587s-60.479 61.26-98.82 78.646c-41.66 18.89-143.509 46.392-151.135 34.696-15.75-24.149 95.169-97.026 95.169-97.026L178.696 1.697Z"/><path fill="#fff" fill-opacity=".3" d="m178.696 1.697 128.517-31.412s-110.919 72.878-95.169 97.026c7.626 11.695 1','09.475-15.806 151.135-34.696 38.341-17.386 98.82-78.647 98.82-78.647s96.278-20.919 109.994-8.587c13.716 12.334-33.377 68.82-27.697 82.584 5.679 13.763 47.885 15.201 61.774 0 17.362-19.001 18.534-100.215 42.395-114.01C672.326-99.841 749.237-54.81 749.237-54.81l-29.681 75.345s32.913 32.767 53.315 30.697c22.263-2.258 58.958-22.355 80.266-44.251 25.3-25.998 71.535-111.74 71.535-111.74l136.578-38.347L1028.06-.827S913.131 45.537 876.151 80.629c-35.503 33.69-79.578 108.801-69.964 129.088 9.613 20.288 86.929 5.233 127.644-7.364C981 187.758 1053.45 168.182 1089.2 122.151c37.26-47.97 68.16-207.608 68.16-207.608l47.76 51.901s-58.14 90.738-59.74 112.803c-1.31 17.882 38.25 33.055 50.09 19.587 24.02-27.33 94.01-183.562 94.01-183.562l106.47 19.538s-92.97 125.93-134.91 182.896c-38.98 52.929-71.55 133.417-','116.78 158.897-44.93 25.313-113.38-8.886-154.591-6.016-31.767 2.213-84.211-3.392-108.215 17.533-36.569 31.879-80.479 119.372-111.202 173.743-27.605 48.854-13.298 121.767-53.236 155.767-58.311 49.641-143.275-13.93-143.275-13.93l-124.09 23.36s-42.274 28.773-81.552 29.385c-37.435.583-108.343-29.623-108.343-29.623l-95.868-65.615.871-45.419-44.758-5.69s-70.565 19.883-90.154 5.698c-19.59-14.184-31.31-61.457-27.38-90.804C6.4 395.643 53.434 339.71 53.434 339.71s-34.014-54.036-40.57-77.995c-5.785-21.147 1.339-44.072 1.239-65.759-.1-21.463-11.705-45.3-1.841-64.361C33.646 90.27 178.696 1.697 178.696 1.697Zm381.916-46.692a30.937 30.937 0 0 0-2.366-.296c-4.367-.343-9.6-.265-15.306.066-26.734 1.556-62.995 8.736-74.512 11.123-12.661 12.433-65.115 62.792-99.881 78.556-34.461 15.627-108.792 36.821-141.169 '));
      
        return render;
      }

    function renderFn1(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('38.536-7.908.418-13.985-.426-17.698-1.873-4.122-1.608-6.815-4.082-8.525-6.704-3.895-5.971-4.844-13.326-2.067-21.756 2.456-7.456 8.48-16.451 16.98-25.732 8.567-9.355 19.739-19.294 31.127-28.587L183.766 13.84h-.002c-11.024 6.803-73.101 45.497-117.973 81.6-19.655 15.816-36.098 30.754-41.985 42.129-3.673 7.1-2.762 15.134-1.51 23.347 1.777 11.652 4.753 23.637 4.806 34.98.052 11.262-1.723 22.849-2.808 34.363-.897 9.504-1.371 18.959 1.109 28.025 6.27 22.921 39.032 74.501 39.032 74.501a13 13 0 0 1-1.052 15.292s-16.395 19.499-30.334 41.235c-8.45 13.177-16.312 27.069-17.696 37.406-2.12 15.815.957 37.409 7.45 54.92 3.795 10.229 8.5 19.163 14.669 23.629 4.154 3.008 11.703 2.858 20.023 2.561 26.114-.932 58.98-10.243 58.98-10.243a13.003 13.003 0 0 1 5.166-.383l44.757 5.69a13 13 0 0 1 11.358 13.146l-.736',' 38.403 89.018 60.927c9.155 3.868 69.003 28.59 101.859 28.077 35.9-.557 74.439-27.133 74.439-27.133a12.998 12.998 0 0 1 4.91-2.027l124.09-23.361c3.58-.673 7.277.185 10.194 2.367 0 0 28.242 21.14 62.47 28.145 21.076 4.314 44.695 3.232 64.589-13.705 17.734-15.097 22.533-39.211 26.854-64.596 5.118-30.061 8.975-61.979 23.491-87.668 31.373-55.521 76.635-144.593 113.978-177.147 11.312-9.861 27.802-15.211 46.133-17.66 23.616-3.155 50.434-1.698 69.721-3.041 21.464-1.495 50.064 6.362 79.114 11.598 24.78 4.469 50.03 7.31 70-3.941 16.59-9.345 31.05-27.023 45.04-47.664 22.98-33.9 44.17-75.73 67.65-107.614 32.56-44.216 95.85-129.975 122.56-166.159l-76.02-13.948c-15.72 34.415-70.99 153.757-91.88 177.525-4.28 4.874-10.4 8.02-17.7 9.124-8.05 1.215-17.8-.158-26.73-3.622-9.04-3.505-17.14-9.12-22.1-15.477-4.','59-5.877-6.78-12.47-6.29-19.139.55-7.553 6.39-22.358 15.02-39.105 13.14-25.49 32.19-56.566 41.38-71.273l-23.93-26.004c-6.29 28.514-17.82 76.678-32.24 118.471-9.91 28.745-21.34 54.507-33.17 69.734-37.34 48.072-112.536 69.405-161.797 84.647-29.766 9.21-78.297 19.474-108.16 17.658-9.466-.576-17.354-2.414-22.999-5.276-5.808-2.944-9.783-7.033-12.075-11.87-3.831-8.084-3.007-22.925 3.766-40.666 12.475-32.678 42.938-78.69 68.998-103.42C899.947 40.127 992.008.206 1016.92-10.272l26.68-114.373-110.158 30.926c-10.4 18.816-48.686 86.849-70.989 109.767-23.371 24.017-63.85 45.64-88.27 48.118-8.297.843-18.271-2.003-27.959-7.188-18.203-9.742-35.84-27.229-35.84-27.229a13 13 0 0 1-2.923-13.977l25.511-64.758c-12.7-6.825-35.701-18.346-55.679-23.866-5.554-1.533-10.831-2.6-15.483-2.791-2.698-.111-5.091-.157-6.83','8.853-2.844 1.644-4.651 5.26-6.599 9.502-4.578 9.967-7.803 23.452-10.855 37.127-3.359 15.053-6.449 30.339-10.286 42.275-3.18 9.892-7.126 17.762-11.564 22.62-10.661 11.667-34.039 16.91-52.863 14.444-15.382-2.014-26.964-9.621-30.526-18.255-1.881-4.558-1.982-11.788 1.209-20.506 4.174-11.4 14.145-27.767 21.401-42.382 2.376-4.787 4.554-11.293 5.723-15.03Z"/><path fill="#000" d="m258.735 423.882-93.808 82.233-76.91-30.591c73.03-42.412 127.723-94.094 171.853-151.116l-122.726.844-42.043-73.571 165.82 1.954.728-56.645c-33.203 9.894-124.361 28.981-124.361 28.981l-41.516-60.399c116.641-24.775 242.776-63.923 349.065-117.978l3.936 75.596s-77.933 36.083-117.705 50.708l-1.034 80.462 117.677 3.337-20.679 70.459-94.717-2.988c25.488 50.232 63.244 82.34 107.042 105.521l-59.297 41.493-52.338-37.751c-7.496 77.','356-2.004 147.292 14.951 210.679l-83.676-55.38-.262-165.848Zm284.837 132.98-3.484 42.758-66.186 14.412 5.316-552.783 1.267.013-1.322 5.752 241.092 3.082-8.396-9.807-8.957 546.396-68.799-14.37 1.265-35.767-91.796.314Zm4.074-423.681-3.394 352.898 93.406-.32-2.162-346.947-87.85-5.631Z"/><path fill="#000" d="m493.691 511.626-3.409 36.601-64.774 12.336 5.148-468.247 230.262 2.24-11.296 459.719-67.331-12.301 1.238-30.616-89.838.268Zm3.987-362.671-3.321 302.081 91.413-.274-2.116-296.987-85.976-4.82Z"/><path fill="',colors[1].toColor(),'" d="m511.919 531.571-1.724 18.511a20 20 0 0 1-16.172 17.791l-64.774 12.337a20.002 20.002 0 0 1-23.74-19.866l5.147-468.248c.122-11.035 9.158-19.886 20.194-19.779l230.262 2.24a20.002 20.002 0 0 1 19.8 20.49l-11.296 459.719a20.002 20.002 0 0 1-23.589 19.183l-67.331-12.301c-9.802-1.791-16.791-10.526-16.389-20.482l.395-9.746-50.783.151Zm-18.228-19.945 89.838-.268-1.238 30.616 67.331 12.301 11.296-459.718-230.262-2.24-5.148 468.246 64.773-12.336 3.41-36.601Zm3.987-362.671 85.976 4.82 2.115 296.987-91.412.274 3.321-302.081Zm19.769 21.14-2.868 260.88 51.048-.152-1.839-258.13-46.341-2.598Z"/><path fill="#000" d="m214.93 397.794-91.807 70.391-75.27-26.186c71.473-36.304 124.999-80.544 168.188-129.355l-120.108.722-41.146-62.976 162.283 1.672.712-48.487c-32.495 8.468-121.708 24.807-121.708 24.807l-40.','63-51.701c114.152-21.207 237.596-54.718 341.618-100.99l3.852 64.711s-76.27 30.887-115.194 43.406l-1.012 68.875 115.167 2.857-20.238 60.312-92.697-2.557c24.945 42.999 61.895 70.483 104.759 90.326l-58.032 35.518-51.221-32.315c-7.337 66.216-1.962 126.081 14.632 180.341l-81.891-47.406-.257-141.965Z"/><path fill="'));
      
        return render;
      }

    function renderFn2(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked(colors[1].toColor(),'" d="M72.356 230.57 39.72 189.039a20.001 20.001 0 0 1 12.072-32.021c112.65-20.928 234.489-53.938 337.143-99.6a19.998 19.998 0 0 1 28.093 17.085l3.852 64.709a20 20 0 0 1-12.457 19.727s-61.689 24.966-102.912 39.311l-.513 34.931 95.374 2.365a20 20 0 0 1 18.466 26.356l-20.239 60.312a19.997 19.997 0 0 1-19.511 13.63l-51.949-1.433c20.342 22.163 45.365 38.283 72.963 51.06a20.005 20.005 0 0 1 11.565 16.994 20.002 20.002 0 0 1-9.527 18.214l-58.031 35.519a20.004 20.004 0 0 1-21.113-.144l-23.237-14.661c-2.371 50.567 3.342 97.077 16.446 139.923a20 20 0 0 1-6.684 21.507 19.999 19.999 0 0 1-22.462 1.651l-81.89-47.406a20 20 0 0 1-9.98-17.273l-.185-101.521-59.71 45.782a20 20 0 0 1-18.741 3.019l-75.27-26.186a20.001 20.001 0 0 1-2.486-36.721c52.176-26.503 94.445-57.38 129.977-91.24l-72.72.437a20 20 0 0 1-16','.863-9.059l-41.146-62.977a20 20 0 0 1 16.949-30.939l17.363.18Zm111.383 1.148 13.625.14.044-3.029a1771.11 1771.11 0 0 1-13.669 2.889Zm31.192 166.076.256 141.965 81.891 47.406c-16.594-54.26-21.969-114.125-14.632-180.341l51.221 32.315 58.032-35.518c-42.863-19.843-79.814-47.328-104.759-90.326l92.697 2.557 20.238-60.313-115.167-2.856 1.012-68.875c38.924-12.519 115.194-43.407 115.194-43.407l-3.852-64.71c-104.022 46.272-227.466 79.783-341.618 100.99l40.63 51.701s89.213-16.339 121.708-24.808l-.712 48.488-162.283-1.673 41.146 62.977 120.108-.722c-43.188 48.811-96.715 93.05-168.187 129.355l75.269 26.186 91.808-70.391Z"/></g><defs><clipPath id="a"><path fill="#fff" d="M0 0h2160v2700H0z"/></clipPath></defs>'));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn0(colors),renderFn1(colors),renderFn2(colors)));
      
        return render;
      }
}