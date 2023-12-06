// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Base64.sol";
import './HexStrings.sol';

interface ILayerMaster {
	function renderMain(
		uint8[] memory layers,
		bool includeTags
	) external view returns (string memory);
}

contract OnchainMechs is ERC721, ERC721Enumerable, ERC721Burnable, Ownable {
	using Strings for uint256;
  using HexStrings for uint160;

	mapping(uint => uint) public tokenSeed;
	address layerMaster;

	constructor(
		address _layerMaster
	) ERC721("Onchain Mechs", "MECH") Ownable() {
		layerMaster = _layerMaster;
	}

	// The following functions are overrides required by Solidity.

	// function _update(
	// 	address to,
	// 	uint256 tokenId,
	// 	address auth
	// ) internal override(ERC721, ERC721Enumerable) returns (address) {
	// 	return super._update(to, tokenId, auth);
	// }

	// function _increaseBalance(
	// 	address account,
	// 	uint128 value
	// ) internal override(ERC721, ERC721Enumerable) {
	// 	super._increaseBalance(account, value);
	// }

	function _beforeTokenTransfer(
		address from,
		address to,
		uint256 firstTokenId,
		uint256 batchSize
	) internal override(ERC721, ERC721Enumerable) {
		super._beforeTokenTransfer(from, to, firstTokenId, batchSize);
	}

	function supportsInterface(
		bytes4 interfaceId
	) public view override(ERC721, ERC721Enumerable) returns (bool) {
		return super.supportsInterface(interfaceId);
	}

	function tokenURI(
		uint256 id
	) public view override(ERC721) returns (string memory) {
		require(_exists(id), "not exist");
		string memory name = string(abi.encodePacked("Mech #", id.toString()));
		string memory description = string(abi.encodePacked("This is ", name));
		string memory image = Base64.encode(bytes(generateSVGofTokenById(id)));

		return
			string(
				abi.encodePacked(
					"data:application/json;base64,",
					Base64.encode(
						bytes(
							abi.encodePacked(
								'{"name":"',
								name,
								'", "description":"',
								description,
								'", "external_url":"https://burnyboys.com/token/',
								id.toString(),
								'", "attributes": [{"trait_type": "rarity", "value": "super-rare',
								'"},{"trait_type": "chubbiness", "value": ',
								'"pretty chubby"',
								'}], "owner":"',
								(uint160(ownerOf(id))).toHexString(20),
								'", "image": "',
								"data:image/svg+xml;base64,",
								image,
								'"}'
							)
						)
					)
				)
			);
	}

	function generateSVGofTokenById(
		uint256 id
	) public view returns (string memory) {
		uint8[] memory layers = getLayersForToken(id);
		string memory svg = ILayerMaster(layerMaster).renderMain(
			layers,
			true
		);

		return svg;
	}

	function mintItem() public returns (uint256) {
		uint256 id = totalSupply();
		_mint(msg.sender, id);

		bytes32 predictableRandom = keccak256(
			abi.encodePacked(
				blockhash(block.number - 1),
				msg.sender,
				address(this),
				id
			)
		);
		tokenSeed[id] = generateSeed(uint256(predictableRandom));

		return id;
	}

	function getLayersForToken(
		uint256 id
	) public view returns (uint8[] memory) {
		uint8[] memory layers = readSeedParts(tokenSeed[id]);
		// Add arms front layer (should be the same value as arms back layer)
		// Add the last value to the end of the array
		layers[7] = layers[6];
		// Replace the 6th value with the value of the 4th
		layers[6] = layers[4];
		// Multiply layers to get their actual position
		for (uint256 i; i < layers.length; i++) {
			if (i == 0) {
				// The first layer doesn't need to be multiplied
				continue;
			}
			layers[i] = uint8(layers[i] + (i * 8));
		}
		return layers;
	}

	// Visibility is `public` to enable it being called by other contracts for composition.
	function renderTokenById(uint256 id) public view returns (string memory) {
		uint8[] memory layers = getLayersForToken(id);
		string memory render = ILayerMaster(layerMaster).renderMain(
			layers,
			false
		);

		return render;
	}

	// Function to generate a constrained seed based on a random number
	function generateSeed(
		uint256 randomNumber
	) internal pure returns (uint256) {
		uint256 seed = 0;

		for (uint256 i = 0; i < 6; i++) {
			// Extract the i-th 3-bit chunk from the random number
			uint256 chunk = (randomNumber >> (i * 3)) & 0x4; // Adjusted range to 0-6

			// Set the i-th 3-bit chunk in the seed
			seed |= (chunk << (i * 3));
		}

		return seed;
	}

	// Function to read each part of the seed and return a number between 0 and 6
	function readSeedParts(
		uint256 seed
	) public pure returns (uint8[] memory) {
    uint8[] memory parts =  new uint8[](8);
		for (uint256 i = 0; i < 6; i++) {
			// Extract the i-th 3-bit chunk from the seed
			uint256 chunk = (seed >> (i * 3)) & 0x6; // Adjusted range to 0-6

			// Store the result in the array
			parts[i] = uint8(chunk);
		}

		return parts;
	}
}
