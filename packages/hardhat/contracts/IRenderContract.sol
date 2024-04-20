//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IRenderContract {
    function renderMain(bytes4[] memory colors) external pure returns (string memory);
}
