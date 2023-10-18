//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IRenderContract {
    function renderMain(bytes4[] memory colors) external pure returns (string memory);
}

contract LayerMaster {
    
    uint public layerCount;
    mapping(uint8 => address[]) public assets; // traitType => render contract addresses
    
    constructor(uint8[] memory traits, address[][] memory addresses) {
        require(traits.length == addresses.length, "Lengths don't match");
        for (uint8 i; i < traits.length; i++){
            assets[i] = addresses[i];
        }
    }

    function renderMain(
        uint8[] memory traits,
		bytes4[] memory colors
	) public view returns (string memory) {
        string memory result;
        for (uint8 i; i < traits.length; i++) {
            address[] memory locations = assets[traits[i]];
            for (uint h; h < locations.length; h++) {
                IRenderContract asset = IRenderContract(locations[h]);
                result = string(abi.encodePacked(result, asset.renderMain(colors)));
            }
        }
		return result;
	}

    function addAssets(uint8[] memory traits, address[][] memory addresses) public {
        require(traits.length == addresses.length, "Lengths don't match");
        for (uint8 i; i < traits.length; i++){
            assets[i] = addresses[i];
        }
    }
}

/**
[0,1,2,3,4,5,6,7]
 */