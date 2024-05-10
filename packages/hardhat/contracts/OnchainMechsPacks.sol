// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Base64.sol";
import "./HexStrings.sol";
import "./RLPReader.sol";
import "./OnchainMechs.sol";
import "hardhat/console.sol";

contract OnchainMechsPacks is
	ERC721,
	ERC721Enumerable,
	ERC721Burnable,
	Ownable
{
	using Strings for uint256;
	using HexStrings for uint160;
	using RLPReader for RLPReader.RLPItem;
	using RLPReader for bytes;

	struct Pack {
		uint blockNumber;
		uint edition;
	}

	mapping(uint => Pack) public packs;

	uint public currentEdition;
	mapping(uint => uint) public editionCount; // Edition => count
	OnchainMechs public onchainMechs;

	uint public constant futureBlocks = 2;
	uint public packPrice = 0.0015 ether;
	uint public packCardCount = 3;

	constructor(
		uint _editionCount
	) ERC721("Onchain Mechs Pack", "PACK") Ownable(msg.sender) {
		addEdition(_editionCount);
	}

	function setMechsContract(address _onchainMechs) public onlyOwner {
		onchainMechs = OnchainMechs(_onchainMechs);
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
	) public pure returns (string memory) {
		string memory svg = "";
		return svg;
	}

	function mintPack() public payable returns (uint256) {
		uint256 id = totalSupply();
		_mint(msg.sender, id);

		packs[id].blockNumber = block.number + futureBlocks;

		return id;
	}

	function openPack(bytes memory rlpBytes, uint id) public {
		// Check if pack exists
		_requireOwned(id);
		// Check if pack is owned by sender
		require(ownerOf(id) == msg.sender, "You do not own that pack");
		Pack memory pack = packs[id];
		require(
			block.number >= pack.blockNumber,
			"Too soon to open pack"
		);
		require(
			block.number < pack.blockNumber + 256,
			"Too late to open pack"
		);
		RLPReader.RLPItem[] memory ls = rlpBytes.toRlpItem().toList();

		// uint256 difficulty = ls[7].toUint();
		// we have to use mixHash on PoS networks -> https://eips.ethereum.org/EIPS/eip-4399
		bytes memory difficulty = ls[13].toBytes();

		uint256 blockNumber = ls[8].toUint();



			// Log pack data
		console.log("Pack ID: %s", id);
		console.log("Block Number: %s", pack.blockNumber);
		console.log("Current Block Number: %s", block.number);


		require(
			blockNumber == pack.blockNumber,
			"Wrong block"
		);

		require(
			blockhash(blockNumber) == keccak256(rlpBytes),
			"Wrong block header"
		);
		console.log("Hash here: %s");

		bytes32 hash = keccak256(
			abi.encodePacked(difficulty, address(this), msg.sender)
		);
		console.log("Hash: %s");
		// burn pack
		_burn(id);
		console.log("Hash here: %s");
		// mint cards in OnchainMechs.sol // TODO: erc721a and send the command to mint multiple
		for (uint i = 0; i < packCardCount; i++) {
			onchainMechs.mintItem(
				msg.sender,
				hash
			);
		console.log("Hash here: %s");
		}
	}

	function refreshPack(uint id) public {
		// Check if pack exists
		_requireOwned(id);
		// Check if pack is owned by sender
		require(ownerOf(id) == msg.sender, "You do not own that pack");
		Pack memory pack = packs[id];
	
		require(
			block.number > pack.blockNumber + 256,
			"Too early to refresh pack"
		);
		packs[id].blockNumber = block.number + futureBlocks;
	}

	function addEdition(
		uint _editionCount
	) public onlyOwner {
		currentEdition++;
		editionCount[currentEdition] = _editionCount;
	}

	function setPackPrice(
		uint _packPrice
	) public onlyOwner {
		packPrice = _packPrice;
	}

	function setPackCardCount(
		uint _packCardCount
	) public onlyOwner {
		packCardCount = _packCardCount;
	}
}
