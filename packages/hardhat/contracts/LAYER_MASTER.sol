//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ToColor.sol";

contract LayerMaster {
	using ToColor for bytes4;


	function renderMain(
		bytes4[] calldata colors
	) public pure returns (string memory) {

		return "helo";
	}
}
