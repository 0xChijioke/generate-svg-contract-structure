//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./IRenderContract.sol";

contract LayerMaster {
    string public START_TAG;
    string public END_TAG;

    mapping(uint8 => address[]) public assets; // traitType => render contract addresses
    mapping(uint8 => bytes4[]) public assetColors; // uint8 corresponds to the above mapping

    constructor(string memory _startTag, string memory _endTag) {
        START_TAG = _startTag;
        END_TAG = _endTag;
    }

    function renderMain(
        uint8[] memory layers,
        bool includeTags
	) public view returns (string memory) {
        string memory result;
        for (uint8 i; i < layers.length; i++) {
            address[] memory locations = assets[layers[i]];
            bytes4[] memory colors = assetColors[layers[i]];
            for (uint h; h < locations.length; h++) {
                result = string(abi.encodePacked(result, IRenderContract(locations[h]).renderMain(colors)));
            }
        }
        if (includeTags) {
    		return string(abi.encodePacked(START_TAG, result, END_TAG));
        } else {
		    return result;
        }
	}

    function addAssets(uint8[] memory traits, address[][] memory addresses, bytes4[][] memory colors) public {
        require(traits.length == addresses.length, "Lengths don't match");
        for (uint8 i; i < traits.length; i++){
            assets[traits[i]] = addresses[i];
            assetColors[traits[i]] = colors[i];
        }
    }

    function addAsset(uint8 trait, address[] memory addresses, bytes4[] memory colors) public {
        assets[trait] = addresses;
        assetColors[trait] = colors;
    }
}

/**
[0,1,2,3,4,5,6,7]
 */