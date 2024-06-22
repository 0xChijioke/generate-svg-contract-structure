// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

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

contract BasedMecha is ERC721, ERC721Enumerable, ERC721Burnable, Ownable {
	using Strings for uint256;
  	using HexStrings for uint160;

	mapping(uint => uint) public tokenSeed; 
	mapping(uint => uint) public tokenRarity;
	mapping(uint => uint) public tokenLocation;
	// Common cards are made up of random asset combinations
	// Cards with greater rarity are made up of specific asset combinations
	mapping(uint => uint8[]) public uncommonAssetLocations; // For true cards
	uint public uncommonAssetLength; 
	mapping(uint => uint8[]) public rareAssetLocations; // For rare cards
	uint public rareAssetLength;
	mapping(uint => uint8[]) public ultraRareAssetLocations; // For ultra-rare cards
	uint public ultraRareAssetLength;
	mapping(uint => uint8[]) public customLocations; // tokenId => layers, For custom cards
	address public layerMaster;
	address public mintingContract;

	// 0.1% of the maximum integer value. Used to calculate the rarity of the card. Never multiply by > 1000 or else overflow will occur
	uint public constant ONE_TENTH_PERCENT_MAX_INT =  0x4189374BC6A7F05856530687DFA4DF4D2CD59E34CB6BAA1000000000000000;

	constructor(
		address _layerMaster,
		address _mintingContract
	) ERC721("Based Mecha", "MECH") Ownable(msg.sender) {
		layerMaster = _layerMaster;
		mintingContract = _mintingContract;
	}

 	modifier onlyMintingContract() {
        require(msg.sender == mintingContract, "Not valid address");
        _;
    }

	// The following functions are overrides required by Solidity.
	function _update(
		address to,
		uint256 tokenId,
		address auth
	) internal override(ERC721, ERC721Enumerable) returns (address) {
		return super._update(to, tokenId, auth);
	}

	function _increaseBalance(
		address account,
		uint128 value
	) internal override(ERC721, ERC721Enumerable) {
		super._increaseBalance(account, value);
	}

	function supportsInterface(
		bytes4 interfaceId
	) public view override(ERC721, ERC721Enumerable) returns (bool) {
		return super.supportsInterface(interfaceId);
	}

	function _getRarityString(uint _tokenRarity) internal pure returns (string memory) {
		if (_tokenRarity == 0) {
			return "common";
		} else if (_tokenRarity == 1) {
			return "uncommon";
		} else if (_tokenRarity == 2) {
			return "rare";
		} else if (_tokenRarity == 3) {
			return "ultra-rare";
		} else {
			return "unknown";
		}
	}

	function getLocation(uint random, uint rarity) public view returns (uint) {
		if (rarity == 1) {
			return uint8(random % uncommonAssetLength);
		} else if (rarity == 2) {
			return uint8(random % rareAssetLength);
		} else if (rarity == 3) {
			return uint8(random % ultraRareAssetLength);
		} else {
			return 0;
		}
	}

	function tokenURI(
		uint256 id
	) public view override(ERC721) returns (string memory) {
		_requireOwned(id);
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
								'", "attributes": [{"trait_type": "rarity", "value": "',
								_getRarityString(tokenRarity[id]),
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

	function mintItem(address owner, bytes32 packSeed) external onlyMintingContract returns (uint256) {
		uint256 id = totalSupply(); // This might need to change
		_mint(owner, id);

		bytes32 seedBytes = keccak256(
			abi.encodePacked(
				packSeed,
				id
			)
		);
		tokenSeed[id] = uint256(seedBytes);
		
		return id;
	}

	function getRarity(uint256 seed) public pure returns (uint) {
		if (seed > 997 * ONE_TENTH_PERCENT_MAX_INT) {
			// Ultra Rare - 0.3% chance
			return 3;
		} else if (seed > 979 * ONE_TENTH_PERCENT_MAX_INT) {
			// Rare - 2.1% chance
			return 2;
		} else if (seed > 785 * ONE_TENTH_PERCENT_MAX_INT) {
			// True Card - 21.5% chance
			return 1;
		} else {
			// Mixed - 78.5% chance
			return 0;
		}
	}

	function getLayersForToken(
		uint256 id
	) public view returns (uint8[] memory) {
		uint rarity = getRarity(tokenSeed[id]);
		uint location = tokenLocation[id];
		if (rarity == 1) {
			return getUncommonArray(location);
		} else if (rarity == 2) {
			return getRareArray(location);
		} else if (rarity == 3) {
			return getUltraRareArray(location);
		} else {
			return getCommonArray(tokenSeed[id]);
		}
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

	function getCommonArray(uint256 randomNumber) public pure returns (uint8[] memory) {
        uint8[] memory layers = new uint8[](8);

        // Iterate to fill the array with values between 0 and 6
        for (uint8 i = 0; i < 7; i++) {
            // Take the least significant digit of the random number as the array value
            layers[i] = uint8(randomNumber % 7);
            
            // Move to the next digit for the next iteration
            randomNumber /= 7;
        }

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
			layers[i] = uint8(layers[i] + (i * 7));
		}
		return layers;
    }

	function getUncommonArray(uint256 location) public view returns (uint8[] memory) {
        return uncommonAssetLocations[location];
    }

	function getRareArray(uint256 location) public view returns (uint8[] memory) {
        return rareAssetLocations[location];
    }

	function getUltraRareArray(uint256 location) public view returns (uint8[] memory) {
        return ultraRareAssetLocations[location];
    }

	// Update Minting contract?
}
