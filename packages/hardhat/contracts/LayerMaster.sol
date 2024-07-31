//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

//  _       ____  __ __    ___  ____       ___ ___   ____  _____ ______    ___  ____
// | |     /    ||  |  |  /  _]|    \     |   |   | /    |/ ___/|      |  /  _]|    \
// | |    |  o  ||  |  | /  [_ |  D  )    | _   _ ||  o  (   \_ |      | /  [_ |  D  )
// | |___ |     ||  ~  ||    _]|    /     |  \_/  ||     |\__  ||_|  |_||    _]|    /
// |     ||  _  ||___, ||   [_ |    \     |   |   ||  _  |/  \ |  |  |  |   [_ |    \
// |     ||  |  ||     ||     ||  .  \    |   |   ||  |  |\    |  |  |  |     ||  .  \
// |_____||__|__||____/ |_____||__|\_|    |___|___||__|__| \___|  |__|  |_____||__|\_|

import "@openzeppelin/contracts/access/Ownable.sol";
import "./IRenderContract.sol";

contract LayerMaster is Ownable(msg.sender) {
	string public START_TAG;
	string public END_TAG;

	mapping(uint => address[]) public assets; // traitType => render contract addresses
	mapping(uint => bytes4[]) public assetColors; // uint corresponds to the above mapping
	mapping(uint => string) public assetType; // traitType => render contract addresses
	mapping(uint => string) public assetName; // uint corresponds to the above mapping

	constructor(string memory _startTag, string memory _endTag) {
		START_TAG = _startTag;
		END_TAG = _endTag;
	}

	function renderMain(
		uint[] memory layers,
		bool includeTags
	) public view returns (string memory) {
		string memory result;
		for (uint i; i < layers.length; i++) {
			address[] memory locations = assets[layers[i]];
			bytes4[] memory colors = assetColors[layers[i]];
			for (uint h; h < locations.length; h++) {
				result = string(
					abi.encodePacked(
						result,
						IRenderContract(locations[h]).renderMain(colors)
					)
				);
			}
		}
		if (includeTags) {
			return string(abi.encodePacked(START_TAG, result, END_TAG));
		} else {
			return result;
		}
	}

	function getDetails(
		uint[] memory layers,
		uint excludeLastLayersNum
	)
		public
		view
		returns (string[] memory layerTypes, string[] memory layerNames)
	{
		uint length = uint(layers.length - excludeLastLayersNum);
		layerTypes = new string[](length);
		layerNames = new string[](length);
		for (uint i = 0; i < length; i++) {
			uint slot = length - i - 1;
			layerTypes[i] = assetType[layers[slot]];
			layerNames[i] = assetName[layers[slot]];
		}
	}

	function addAssets(
		uint[] memory traits,
		address[][] memory addresses,
		bytes4[][] memory colors
	) public onlyOwner {
		require(traits.length == addresses.length, "Lengths don't match");
		for (uint i; i < traits.length; i++) {
			addAsset(traits[i], addresses[i], colors[i]);
		}
	}

	function addAsset(
		uint trait,
		address[] memory addresses,
		bytes4[] memory colors
	) public onlyOwner {
		assets[trait] = addresses;
		assetColors[trait] = colors;
	}

	function addDetails(
		uint[] memory traits,
		string[] memory _layerTypes,
		string[] memory _layerNames
	) public onlyOwner {
		require(traits.length == _layerTypes.length, "Lengths don't match");
		for (uint i; i < traits.length; i++) {
			addDetail(traits[i], _layerTypes[i], _layerNames[i]);
		}
	}

	function addDetail(
		uint trait,
		string memory _layerType,
		string memory _layerName
	) public onlyOwner {
		assetType[trait] = _layerType;
		assetName[trait] = _layerName;
	}
}

