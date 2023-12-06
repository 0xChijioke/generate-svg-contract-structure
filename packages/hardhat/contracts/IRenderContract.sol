//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IRenderContract {
    function renderMain(bytes4[] memory colors) external pure returns (string memory);
}
