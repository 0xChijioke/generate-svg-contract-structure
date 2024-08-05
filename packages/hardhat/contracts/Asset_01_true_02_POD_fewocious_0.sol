//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import './ToColor.sol';

contract Asset_01_true_02_POD_fewocious_0 {

using ToColor for bytes4;

function renderFn0(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('<path fill="',colors[0].toColor(),'" d="M1090.5 2061.64c284.8 0 515.68-262.95 515.68-587.31 0-324.36-230.88-587.307-515.68-587.307-284.794 0-515.669 262.947-515.669 587.307s230.875 587.31 515.669 587.31Z"/><path fill="#fff" fill-opacity=".7" fill-rule="evenodd" d="m1299.59 1010.26.08-.42.86.13-.08.43c-.6 4.95-1.63 13.59-3.06 23.34-.73 5-1.52 10.28-2.45 15.49-.96 5.31-2.06 10.55-3.09 15.37-2.79 13.01-5.25 22.95-5.25 22.95l-.07.43-.86-.16.07-.43s1.24-10.16 3.2-23.31c.73-4.88 1.54-10.16 2.51-15.48.94-5.21 2.05-10.44 3.09-15.36 2.05-9.64 4.03-18.1 5.05-22.98Zm-16.53 3.45.08-.43.86.14-.08.42c-.6 4.95-1.64 13.6-3.06 23.34-.73 5-1.52 10.28-2.45 15.49-.96 5.32-2.06 10.55-3.09 15.37-2.8 13.01-5.25 22.95-5.25 22.95l-.07.43-.86-.16.07-.43s1.23-10.16 3.19-23.31c.73-4.88 1.55-10.16 2.51-15.48.95-5.21 2.06-10.43 3.1-15.36 2.05-9.64 4.03-','18.1 5.05-22.97Zm-14.38-.82.08-.42.86.13-.08.43c-.6 4.95-1.63 13.59-3.06 23.34-.73 5-1.52 10.28-2.45 15.49-.96 5.31-2.06 10.55-3.09 15.37-2.79 13.01-5.25 22.95-5.25 22.95l-.07.42-.86-.16.07-.42s1.24-10.16 3.2-23.31c.73-4.89 1.54-10.16 2.51-15.48.94-5.21 2.05-10.44 3.09-15.36 2.05-9.64 4.03-18.1 5.05-22.98Zm-16.2 7.14.07-.42.86.13-.07.43c-.36 4.04-.78 8.56-1.44 13.16-.42 2.93-.88 5.87-1.48 8.68-.65 3.03-1.44 5.91-2.19 8.52-2.11 7.41-4 12.61-4 12.61l-.11.43-.85-.21.11-.43s.7-5.48 1.96-13.04c.45-2.68.95-5.61 1.6-8.63.62-2.8 1.38-5.65 2.13-8.5 1.17-4.47 2.44-8.82 3.41-12.73Zm-254.605-81.868-.109-.305.585-.228.117.302a9278.34 9278.34 0 0 1 24.062 62.169c5.12 13.35 10.51 27.49 15.76 41.56 5.35 14.34 10.54 28.58 15.31 41.73 12.83 35.35 22.51 62.72 22.51 62.72l.12.3-.59.24-.12-.31s-10.53-27.05-23.','94-62.22c-4.97-13.06-10.37-27.24-15.69-41.56-5.24-14.07-10.43-28.31-15.31-41.72-9.53-26.198-17.86-49.422-22.705-62.678Zm-11.238 15.393-.109-.306.584-.227.118.302c5.141 13.158 14.11 36.129 24.07 62.166 5.11 13.35 10.51 27.49 15.76 41.56 5.34 14.35 10.53 28.58 15.3 41.73 12.83 35.36 22.52 62.72 22.52 62.72l.11.31-.59.23-.12-.3s-10.53-27.06-23.94-62.23c-4.97-13.05-10.37-27.23-15.69-41.55-5.24-14.07-10.43-28.31-15.31-41.73-9.53-26.196-17.856-49.419-22.703-62.675Zm-14.238 3.377-.109-.306.584-.227.117.302c5.142 13.158 14.107 36.129 24.066 62.169 5.113 13.35 10.513 27.49 15.763 41.56 5.34 14.34 10.53 28.58 15.3 41.73 12.83 35.35 22.52 62.72 22.52 62.72l.11.3-.59.23-.12-.3s-10.53-27.05-23.94-62.22c-4.97-13.06-10.36-27.24-15.69-41.56-5.24-14.07-10.426-28.31-15.308-41.72-9.531-26.199-17.857-49.422-2','2.703-62.678Zm-6.6 25-.109-.306.585-.227.117.302c4.231 10.551 8.967 22.469 13.562 34.569 2.967 7.78 5.896 15.58 8.645 23.22 2.942 8.18 5.656 16.12 8.104 23.36 6.927 20.44 11.617 35.26 11.617 35.26l.11.3-.61.21-.09-.28s-5.53-14.54-13.042-34.76c-2.665-7.18-5.575-15.03-8.522-23.25-2.72-7.61-5.445-15.5-8.18-23.36-4.238-12.21-8.375-24.333-12.187-35.038ZM792.868 1264.61l.078-.16.333.16-.084.18c-3.428 6.94-9.444 19.06-16.362 32.72-3.548 6.99-7.305 14.39-11.102 21.71-3.868 7.45-7.754 14.81-11.346 21.58a5246.479 5246.479 0 0 1-17.284 32.24l-.086.15-.333-.16.092-.17s7.118-14.24 16.493-32.65c3.478-6.83 7.257-14.25 11.134-21.7 3.79-7.3 7.677-14.63 11.346-21.58 7.154-13.53 13.524-25.44 17.121-32.32Zm-17.319-.98.078-.16.333.16-.084.18c-3.428 6.94-9.444 19.06-16.362 32.72-3.548 6.99-7.305 14.39-11.101 21','.7-3.869 7.46-7.754 14.82-11.347 21.58a5098.262 5098.262 0 0 1-17.284 32.25l-.086.15-.333-.16.092-.17s7.118-14.24 16.493-32.65c3.478-6.83 7.257-14.25 11.134-21.7 3.79-7.3 7.678-14.63 11.346-21.58 7.155-13.53 13.524-25.44 17.121-32.32Zm-12.932-6.45.078-.16.334.17-.084.17c-3.429 6.94-9.445 19.07-16.363 32.72-3.548 6.99-7.305 14.4-11.101 21.71-3.868 7.46-7.754 14.81-11.347 21.58-9.693 18.24-17.283 32.24-17.283 32.24l-.086.16-.333-.16.092-.18s7.118-14.24 16.492-32.65c3.478-6.83 7.258-14.24 11.134-21.7 3.79-7.29 7.678-14.63 11.346-21.58 7.155-13.52 13.524-25.44 17.121-32.32Zm-19.088 4.57.078-.15.333.16-.084.17a723.178 723.178 0 0 1-9.101 18.27c-2.096 4.07-4.231 8.14-6.366 12.03a534.433 534.433 0 0 1-6.685 11.86c-5.912 10.27-10.368 17.59-10.368 17.59l-.1.17-.313-.2.086-.15s4.005-7.58 9.591-18.01','c1.991-3.71 4.164-7.78 6.464-11.98 2.136-3.9 4.393-7.9 6.605-11.88 3.473-6.23 6.909-12.36 9.86-17.88Zm448.581-49.52.08-.16.33.16-.09.17a3245.1 3245.1 0 0 1-16.36 32.72c-3.55 7-7.3 14.4-11.1 21.71-3.87 7.46-7.75 14.81-11.35 21.58-9.69 18.24-17.28 32.25-17.28 32.25l-.08.15-.34-.16.09-.17s7.12-14.24 16.5-32.66c3.47-6.82 7.25-14.24 11.13-21.69 3.79-7.3 7.68-14.64 11.35-21.58 7.15-13.53 13.52-25.45 17.12-32.32Zm-17.32-.98.08-.16.33.16-.08.17c-3.43 6.95-9.45 19.07-16.37 32.72-3.54 6.99-7.3 14.4-11.1 21.71-3.87 7.46-7.75 14.81-11.34 21.58-9.7 18.24-17.29 32.24-17.29 32.24l-.08.16-.34-.16.1-.17s7.11-14.24 16.49-32.66c3.48-6.82 7.26-14.24 11.13-21.69 3.79-7.3 7.68-14.64 11.35-21.58 7.15-13.53 13.52-25.45 17.12-32.32Zm-12.93-6.45.08-.16.33.16-.09.18c-3.42 6.94-9.44 19.06-16.36 32.72-3.55 6.99-7.3 14'));
      
        return render;
      }

    function renderFn1(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('.39-11.1 21.71-3.87 7.45-7.75 14.81-11.35 21.58-9.69 18.23-17.28 32.24-17.28 32.24l-.09.16-.33-.17.09-.17s7.12-14.24 16.5-32.65c3.47-6.83 7.25-14.24 11.13-21.7 3.79-7.3 7.68-14.63 11.35-21.58 7.15-13.53 13.52-25.44 17.12-32.32Zm-19.09 4.57.08-.16.33.16-.08.18c-2.71 5.63-5.83 11.93-9.11 18.27-2.09 4.06-4.23 8.13-6.36 12.03-2.3 4.22-4.59 8.23-6.69 11.86-5.91 10.27-10.36 17.58-10.36 17.58l-.1.17-.32-.19.09-.15s4-7.58 9.59-18.02c1.99-3.7 4.16-7.78 6.46-11.97 2.14-3.9 4.4-7.9 6.61-11.89 3.47-6.22 6.91-12.35 9.86-17.87Z" clip-rule="evenodd"/><path fill="#fff" fill-opacity=".7" fill-rule="evenodd" d="m1158.77 1161.29-.1-.15.3-.2.11.16c4.34 6.41 11.9 17.63 20.35 30.4 4.32 6.54 8.89 13.47 13.37 20.39 4.57 7.05 9.04 14.06 13.15 20.53a5428.5 5428.5 0 0 1 19.47 30.97l.09.15-.3.21-.11-.16s-8.85-13.23-2','0.22-30.49c-4.21-6.4-8.79-13.35-13.35-20.41-4.46-6.9-8.92-13.91-13.14-20.53-8.22-12.91-15.42-24.34-19.62-30.87Zm-9.42 14.57-.1-.15.3-.21.11.16c4.34 6.42 11.9 17.64 20.35 30.41 4.32 6.54 8.9 13.46 13.37 20.38 4.57 7.05 9.04 14.07 13.15 20.54 11.05 17.44 19.47 30.97 19.47 30.97l.09.15-.3.21-.11-.17s-8.85-13.23-20.22-30.48c-4.21-6.4-8.79-13.35-13.35-20.41-4.46-6.9-8.92-13.91-13.14-20.54-8.22-12.9-15.42-24.33-19.62-30.86Zm-12 8.05-.1-.15.31-.21.11.16c4.33 6.42 11.9 17.64 20.34 30.41 4.32 6.54 8.9 13.47 13.38 20.38 4.56 7.05 9.04 14.07 13.14 20.54a4507.31 4507.31 0 0 1 19.47 30.97l.1.15-.31.21-.1-.17s-8.86-13.23-20.22-30.48c-4.22-6.4-8.79-13.35-13.35-20.41-4.47-6.9-8.92-13.91-13.15-20.53-8.21-12.91-15.42-24.34-19.62-30.87Zm-5.47 18.85-.1-.14.31-.21.11.16c3.55 5.13 7.49 10.96 11.38 16.94 2.49 3.','83 4.97 7.7 7.3 11.49 2.53 4.08 4.88 8.05 7 11.67 6.01 10.22 10.16 17.71 10.16 17.71l.1.17-.33.18-.09-.15s-4.6-7.23-10.91-17.25c-2.24-3.56-4.7-7.47-7.21-11.54-2.33-3.78-4.69-7.73-7.06-11.62-3.7-6.1-7.32-12.11-10.66-17.41Zm-199.33-89.5-.1-.15.306-.21.111.16c4.337 6.42 11.898 17.64 20.343 30.41 4.322 6.54 8.898 13.47 13.377 20.38 4.567 7.05 9.038 14.07 13.143 20.54a4877.127 4877.127 0 0 1 19.474 30.97l.093.15-.306.21-.105-.17s-8.854-13.22-20.22-30.48c-4.215-6.4-8.789-13.35-13.35-20.41-4.467-6.9-8.92-13.91-13.143-20.53-8.218-12.91-15.424-24.34-19.623-30.87Zm-9.419 14.57-.1-.15.306-.21.111.16c4.338 6.41 11.899 17.64 20.343 30.4 4.322 6.55 8.898 13.47 13.377 20.39 4.567 7.05 9.038 14.07 13.143 20.54a5077.605 5077.605 0 0 1 19.474 30.96l.093.16-.306.21-.105-.17s-8.854-13.23-20.22-30.48c-4.215-6.','4-8.789-13.36-13.35-20.41-4.467-6.9-8.92-13.91-13.143-20.54-8.218-12.91-15.424-24.33-19.623-30.86Zm-11.997 8.05-.1-.15.306-.21.111.16a3574.47 3574.47 0 0 1 20.343 30.41c4.322 6.54 8.898 13.46 13.377 20.38 4.567 7.05 9.038 14.07 13.143 20.54a4846.114 4846.114 0 0 1 19.473 30.97l.094.15-.306.21-.105-.17s-8.854-13.23-20.22-30.48c-4.215-6.4-8.789-13.35-13.35-20.41-4.467-6.9-8.92-13.91-13.143-20.54-8.218-12.9-15.424-24.33-19.623-30.86Zm-5.468 18.85-.1-.15.306-.21.112.16a736.973 736.973 0 0 1 11.376 16.95c2.495 3.83 4.975 7.7 7.307 11.48 2.526 4.09 4.881 8.06 6.997 11.68 6.007 10.22 10.158 17.71 10.158 17.71l.098.17-.322.18-.093-.16s-4.603-7.22-10.91-17.24c-2.237-3.56-4.702-7.47-7.21-11.54-2.332-3.79-4.695-7.73-7.062-11.62-3.695-6.1-7.321-12.12-10.657-17.41Zm84.33-4.08-.044-.17.358-.09.051.18c1.','926 7.5 5.267 20.62 8.922 35.48 1.867 7.62 3.847 15.68 5.737 23.7 1.92 8.18 3.77 16.29 5.46 23.76 4.54 20.15 7.91 35.72 7.91 35.72l.04.17-.36.1-.04-.19s-3.89-15.44-8.78-35.51c-1.81-7.45-3.78-15.54-5.7-23.72-1.88-8-3.719-16.1-5.466-23.76-3.393-14.92-6.331-28.11-8.088-35.67Z" clip-rule="evenodd"/><path fill="#fff" fill-opacity=".7" fill-rule="evenodd" d="m976.224 1161.2-.045-.17.359-.1.051.19c1.925 7.5 5.267 20.62 8.922 35.48 1.867 7.61 3.845 15.68 5.733 23.7 1.928 8.17 3.776 16.29 5.464 23.76 4.542 20.15 7.912 35.72 7.912 35.72l.04.17-.36.1-.04-.2s-3.89-15.43-8.783-35.51c-1.814-7.44-3.782-15.53-5.701-23.71-1.883-8-3.718-16.1-5.464-23.76-3.393-14.92-6.332-28.11-8.088-35.67Zm-14.007 3.54-.045-.17.358-.09.051.18c1.926 7.5 5.267 20.62 8.922 35.48 1.868 7.62 3.845 15.68 5.734 23.7 1.927 8.18 3.7','76 16.29 5.464 23.76 4.537 20.15 7.912 35.72 7.912 35.72l.037.17-.358.1-.043-.19s-3.885-15.44-8.779-35.51c-1.815-7.45-3.782-15.54-5.702-23.72-1.882-8-3.717-16.1-5.464-23.76-3.393-14.92-6.331-28.11-8.087-35.67Zm-11.495 15.91-.044-.17.358-.09.051.18a731.253 731.253 0 0 1 5.008 19.79c1.06 4.45 2.094 8.93 3.016 13.27 1.004 4.7 1.884 9.23 2.658 13.35 2.216 11.65 3.605 20.1 3.605 20.1l.034.19-.362.06-.037-.17s-1.902-8.36-4.469-19.91c-.907-4.11-1.914-8.62-2.904-13.3-.922-4.35-1.821-8.85-2.739-13.32-1.426-6.98-2.816-13.87-4.175-19.98Zm491.548 191.57-.16-.67 1.36-.33.16.67c2.18 7.45 6.06 20.42 10.07 35.21 2.06 7.58 4.22 15.6 6.12 23.61 1.93 8.18 3.61 16.33 5.12 23.85 4.07 20.28 6.73 35.99 6.73 35.99l.15.67-1.35.33-.16-.68s-4.58-15.25-9.96-35.22c-1.99-7.42-4.12-15.47-6.04-23.65-1.88-8-3.53-16.15-5.0','8-23.84-3.05-15.01-5.44-28.33-6.96-35.94Zm-13.77 10.55-.16-.67 1.36-.34.16.68c2.17 7.44 6.06 20.42 10.07 35.21 2.05 7.58 4.22 15.59 6.11 23.61 1.94 8.17 3.62 16.33 5.12 23.85 4.08 20.28 6.73 35.98 6.73 35.98l.16.68-1.35.33-.16-.68s-4.58-15.25-9.96-35.23c-2-7.41-4.12-15.46-6.04-23.64-1.88-8.01-3.53-16.15-5.09-23.84-3.04-15.02-5.43-28.33-6.95-35.94Zm-14.01 3.54-.16-.67 1.36-.33.16.67c2.18 7.45 6.06 20.42 10.07 35.21 2.06 7.58 4.22 15.6 6.12 23.61 1.93 8.18 3.61 16.33 5.12 23.85 4.07 20.28 6.73 35.99 6.73 35.99l.15.67-1.35.33-.16-.68s-4.58-15.25-9.96-35.22c-1.99-7.42-4.12-15.47-6.04-23.65-1.88-8-3.53-16.15-5.08-23.84-3.05-15.01-5.44-28.33-6.96-35.94Zm-11.49 15.91-.16-.67 1.36-.33.16.67c1.97 5.98 4.21 12.65 6.17 19.55 1.24 4.4 2.45 8.85 3.39 13.21 1 4.69 1.72 9.27 2.32 13.43 1.74 11.81 2.41 20','.35 2.41 20.35l.14.68-1.37.26-.14-.68s-2.57-8.15-5.65-19.66c-1.09-4.07-2.26-8.51-3.24-13.21-.91-4.34-1.64-8.87-2.36-13.39-1.13-7.07-2.01-14.01-3.03-20.21Zm27.8-300.71.15-.68 1.37.3-.15.68c-1.35 7.64-3.61 20.99-6.56 36.03-1.52 7.71-3.13 15.85-4.98 23.88-1.88 8.19-3.98 16.24-5.96 23.65-5.32 19.99-9.89 35.25-9.89 35.25l-.16.67-1.36-.3.16-.68s2.64-15.71 6.66-36c1.49-7.53 3.15-15.69 5.05-23.87 1.86-8.01 3.99-16.04 5.99-23.63 3.92-14.81 7.67-27.81 9.68-35.3Zm-17.02 3.36.15-.68 1.37.3-.15.68c-1.35 7.64-3.61 20.99-6.56 36.03-1.51 7.71-3.12 15.85-4.97 23.88-1.89 8.19-3.99 16.24-5.97 23.65-5.32 19.99-9.89 35.25-9.89 35.25l-.16.67-1.36-.3.16-.68s2.64-15.71 6.66-36c1.49-7.53 3.15-15.69 5.05-23.87 1.86-8.01 3.99-16.05 6-23.63 3.91-14.81 7.66-27.81 9.67-35.3Zm-14.13-3.03.15-.67 1.37.3-.15.68c-1.35 7.64-'));
      
        return render;
      }

    function renderFn2(bytes4[] memory colors) internal pure returns (string memory) {
        string memory render = string(abi.encodePacked('3.61 20.99-6.56 36.02-1.51 7.71-3.12 15.86-4.97 23.89-1.88 8.18-3.99 16.24-5.97 23.65-5.32 19.99-9.89 35.24-9.89 35.24l-.16.68-1.36-.31.16-.67s2.64-15.71 6.66-36c1.5-7.53 3.15-15.69 5.05-23.87 1.86-8.01 3.99-16.05 6-23.63 3.92-14.81 7.67-27.81 9.67-35.31Zm-17.35 9.18.15-.68 1.37.31-.15.68c-.88 6.23-1.82 13.2-3.13 20.26-.83 4.49-1.71 9.02-2.8 13.34-1.18 4.66-2.57 9.08-3.86 13.08-3.67 11.35-6.85 19.31-6.85 19.31l-.18.67-1.35-.37.19-.68s1.29-8.44 3.63-20.13c.83-4.12 1.75-8.63 2.94-13.28 1.1-4.29 2.46-8.67 3.82-13.04 2.11-6.85 4.39-13.46 6.22-19.47Zm-151.94-122.01-.13-.681 1.38-.261.13.681c1.79 7.547 5.01 20.701 8.26 35.671 1.67 7.68 3.42 15.79 4.91 23.9 1.52 8.26 2.78 16.49 3.9 24.08 3.04 20.46 4.9 36.27 4.9 36.27l.12.69-1.37.26-.12-.69s-3.81-15.47-8.16-35.68c-1.62-7.51-3.33-15.66-4.84-23.92-','1.46-8.1-2.7-16.31-3.86-24.07-2.28-15.15-3.99-28.572-5.12-36.25Zm-14.29 9.832-.13-.681 1.38-.261.13.681c1.79 7.549 5.01 20.699 8.26 35.669 1.67 7.68 3.42 15.8 4.91 23.9 1.52 8.26 2.78 16.49 3.9 24.08 3.04 20.46 4.89 36.28 4.89 36.28l.13.68-1.37.26-.12-.69s-3.81-15.46-8.16-35.68c-1.62-7.51-3.33-15.66-4.84-23.92-1.46-8.09-2.7-16.31-3.86-24.07-2.28-15.15-3.99-28.57-5.12-36.248Zm-14.17 2.828-.13-.68 1.38-.26.13.68c1.79 7.55 5.01 20.7 8.26 35.67 1.67 7.68 3.42 15.79 4.91 23.9 1.52 8.26 2.78 16.49 3.9 24.08 3.04 20.46 4.9 36.27 4.9 36.27l.12.69-1.37.26-.12-.69s-3.81-15.47-8.16-35.68c-1.62-7.51-3.33-15.66-4.84-23.92-1.46-8.1-2.7-16.31-3.86-24.07-2.28-15.15-3.99-28.57-5.12-36.25Zm-12.29 15.31-.13-.68 1.38-.27.13.69c1.66 6.07 3.56 12.84 5.16 19.83 1.02 4.46 2.01 8.96 2.72 13.37.77 4.74 1.25 9.34 1.','64 13.53 1.13 11.88 1.37 20.44 1.37 20.44l.11.69-1.39.19-.1-.69s-2.16-8.26-4.65-19.92c-.87-4.11-1.81-8.61-2.56-13.36-.69-4.37-1.18-8.94-1.67-13.48-.78-7.13-1.3-14.1-2.01-20.34Zm-436.018 458.97-.131-.68 1.375-.26.131.68c1.79 7.55 5.01 20.7 8.265 35.67 1.669 7.68 3.42 15.79 4.907 23.9 1.518 8.26 2.783 16.49 3.903 24.08 3.039 20.46 4.894 36.27 4.894 36.27l.122.69-1.366.26-.123-.69s-3.805-15.47-8.161-35.68c-1.617-7.51-3.332-15.66-4.833-23.92-1.466-8.1-2.701-16.31-3.866-24.08-2.276-15.14-3.987-28.56-5.117-36.24Zm-14.29 9.83-.131-.68 1.375-.26.131.68c1.79 7.55 5.009 20.7 8.264 35.67 1.669 7.68 3.42 15.8 4.907 23.9 1.518 8.26 2.783 16.49 3.904 24.08 3.039 20.46 4.893 36.28 4.893 36.28l.123.68-1.367.26-.123-.69s-3.804-15.46-8.161-35.68c-1.616-7.51-3.331-15.66-4.833-23.92-1.465-8.09-2.701-16.31-3.8','65-24.07-2.276-15.15-3.987-28.57-5.117-36.25Zm-14.169 2.83-.131-.68 1.375-.26.131.68c1.79 7.55 5.009 20.7 8.265 35.67 1.668 7.68 3.419 15.79 4.907 23.9 1.517 8.26 2.783 16.49 3.903 24.08 3.039 20.46 4.893 36.27 4.893 36.27l.123.69-1.367.26-.123-.69s-3.804-15.47-8.161-35.68c-1.616-7.51-3.331-15.66-4.833-23.92-1.465-8.1-2.701-16.31-3.865-24.08-2.276-15.14-3.987-28.56-5.117-36.24Zm-12.288 15.31-.131-.68 1.375-.27.131.69c1.663 6.06 3.563 12.84 5.164 19.83 1.018 4.46 2.005 8.96 2.719 13.37.764 4.74 1.244 9.34 1.639 13.53 1.132 11.88 1.37 20.44 1.37 20.44l.106.69-1.387.19-.098-.69s-2.158-8.26-4.651-19.92c-.875-4.11-1.816-8.61-2.564-13.36-.687-4.37-1.181-8.94-1.669-13.48-.778-7.13-1.303-14.1-2.004-20.34Zm142.057-534.68-.131-.681 1.375-.261.131.681c1.79 7.547 5.009 20.7 8.265 35.671 1.669 7.68 3.4','2 15.79 4.907 23.9 1.517 8.26 2.783 16.49 3.903 24.08 3.039 20.46 4.893 36.27 4.893 36.27l.123.69-1.367.26-.123-.69s-3.804-15.47-8.161-35.68c-1.616-7.51-3.331-15.66-4.833-23.92-1.465-8.09-2.701-16.31-3.865-24.07-2.276-15.153-3.987-28.571-5.117-36.25Zm-14.291 9.834-.131-.681 1.375-.261.131.681c1.791 7.547 5.01 20.7 8.265 35.677 1.669 7.67 3.42 15.79 4.907 23.89 1.518 8.26 2.783 16.49 3.903 24.08 3.039 20.46 4.894 36.28 4.894 36.28l.122.68-1.366.26-.123-.68s-3.805-15.47-8.161-35.69c-1.617-7.51-3.332-15.65-4.833-23.92-1.466-8.09-2.701-16.31-3.866-24.07-2.276-15.15-3.987-28.567-5.117-36.246Zm-14.169 2.826-.13-.68 1.374-.261.131.681c1.791 7.547 5.01 20.7 8.265 35.67 1.669 7.68 3.42 15.79 4.907 23.9 1.518 8.26 2.783 16.49 3.903 24.08 3.039 20.46 4.894 36.27 4.894 36.27l.122.69-1.366.26-.123-.69s','-3.805-15.47-8.161-35.68c-1.617-7.51-3.332-15.66-4.833-23.92-1.466-8.09-2.701-16.31-3.865-24.07-2.277-15.15-3.988-28.571-5.118-36.25Zm-12.287 15.307-.131-.681 1.375-.261.131.681c1.663 6.074 3.563 12.844 5.164 19.834 1.017 4.46 2.005 8.96 2.718 13.37.764 4.74 1.244 9.34 1.639 13.53 1.133 11.88 1.371 20.45 1.371 20.45l.106.68-1.388.2-.098-.7s-2.157-8.26-4.651-19.92c-.875-4.11-1.816-8.61-2.564-13.36-.686-4.37-1.18-8.94-1.669-13.48-.777-7.12-1.303-14.1-2.003-20.343Zm271.335 67.723.26-.64 1.3.52-.26.64c-2.56 7.32-6.95 20.13-12.28 34.5-2.73 7.36-5.64 15.14-8.76 22.77-3.17 7.77-6.54 15.38-9.69 22.38-8.48 18.87-15.45 33.19-15.45 33.19l-.27.64-1.29-.52.27-.64s5.14-15.08 12.37-34.45c2.69-7.2 5.64-14.98 8.83-22.75 3.14-7.61 6.53-15.2 9.73-22.36 6.26-13.98 12.05-26.2 15.24-33.28Zm-17.33.57.25-.64 1.3.','52-.26.64c-2.56 7.32-6.94 20.14-12.28 34.5-2.73 7.37-5.63 15.14-8.75 22.77-3.18 7.78-6.55 15.39-9.7 22.38-8.48 18.87-15.45 33.19-15.45 33.19l-.26.64-1.29-.52.26-.64s5.14-15.08 12.38-34.45c2.69-7.2 5.63-14.98 8.83-22.75 3.13-7.61 6.52-15.19 9.73-22.36 6.25-13.98 12.05-26.2 15.24-33.28Zm-13.46-5.26.26-.64 1.29.52-.25.64c-2.57 7.32-6.95 20.14-12.28 34.5-2.74 7.37-5.64 15.14-8.76 22.77-3.18 7.77-6.55 15.39-9.7 22.38-8.47 18.87-15.44 33.19-15.44 33.19l-.27.64-1.29-.52.27-.64s5.14-15.08 12.37-34.45c2.69-7.2 5.64-14.98 8.83-22.75 3.13-7.61 6.52-15.19 9.73-22.36 6.25-13.98 12.05-26.2 15.24-33.28Zm-18.6 6.26.25-.64 1.3.52-.26.65c-1.87 6-3.92 12.73-6.35 19.49-1.54 4.3-3.14 8.62-4.91 12.72-1.92 4.4-4 8.54-5.92 12.28-5.46 10.61-9.88 17.95-9.88 17.95l-.28.64-1.27-.59.29-.63s2.64-8.13 6.83-19.29c1.48-3.','93 3.12-8.23 5.04-12.63 1.79-4.05 3.83-8.16 5.87-12.26 3.19-6.41 6.51-12.57 9.29-18.21Zm413.28 521.91.26-.65 1.3.53-.26.64c-2.56 7.32-6.94 20.13-12.28 34.5-2.73 7.36-5.64 15.14-8.75 22.77-3.18 7.77-6.55 15.38-9.7 22.38-8.48 18.87-15.45 33.19-15.45 33.19l-.27.64-1.29-.52.27-.64s5.14-15.08 12.37-34.46c2.69-7.19 5.64-14.97 8.83-22.74 3.14-7.61 6.53-15.2 9.73-22.36 6.26-13.98 12.05-26.21 15.24-33.28Zm-17.33.57.25-.64 1.3.52-.26.64c-2.56 7.32-6.94 20.14-12.28 34.5-2.73 7.37-5.63 15.14-8.75 22.77-3.18 7.77-6.55 15.39-9.7 22.38-8.48 18.87-15.45 33.19-15.45 33.19l-.26.64-1.29-.52.26-.64s5.14-15.08 12.38-34.45c2.69-7.2 5.63-14.98 8.83-22.75 3.13-7.61 6.52-15.19 9.73-22.36 6.25-13.98 12.05-26.2 15.24-33.28Zm-13.46-5.26.26-.64 1.29.52-.25.64c-2.57 7.32-6.95 20.13-12.28 34.5-2.74 7.36-5.64 15.14-8.76 '));
      
        return render;
      }

    function renderMain(bytes4[] memory colors) public pure returns (string memory) {
        string memory render = string(abi.encodePacked(renderFn0(colors),renderFn1(colors),renderFn2(colors)));
      
        return render;
      }
}