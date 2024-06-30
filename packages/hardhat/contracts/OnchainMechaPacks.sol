// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// ██████╗  █████╗ ███████╗███████╗██████╗     ███╗   ███╗███████╗ ██████╗██╗  ██╗ █████╗     ██████╗  █████╗  ██████╗██╗  ██╗███████╗
// ██╔══██╗██╔══██╗██╔════╝██╔════╝██╔══██╗    ████╗ ████║██╔════╝██╔════╝██║  ██║██╔══██╗    ██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔════╝
// ██████╔╝███████║███████╗█████╗  ██║  ██║    ██╔████╔██║█████╗  ██║     ███████║███████║    ██████╔╝███████║██║     █████╔╝ ███████╗
// ██╔══██╗██╔══██║╚════██║██╔══╝  ██║  ██║    ██║╚██╔╝██║██╔══╝  ██║     ██╔══██║██╔══██║    ██╔═══╝ ██╔══██║██║     ██╔═██╗ ╚════██║
// ██████╔╝██║  ██║███████║███████╗██████╔╝    ██║ ╚═╝ ██║███████╗╚██████╗██║  ██║██║  ██║    ██║     ██║  ██║╚██████╗██║  ██╗███████║
// ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝╚═════╝     ╚═╝     ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝    ╚═╝     ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Base64.sol";
import "./HexStrings.sol";
import "./RLPReader.sol";
import "./OnchainMecha.sol";

contract OnchainMechaPacks is ERC721, ERC721Enumerable, ERC721Burnable, Ownable {
	using Strings for uint256;
	using HexStrings for uint160;
	using RLPReader for RLPReader.RLPItem;
	using RLPReader for bytes;

	struct Pack {
		uint blockNumber;
		uint edition;
	}

	mapping(uint => Pack) public packs;

	OnchainMecha public onchainMecha;
    address public layerMaster;
	uint8[] public unopenedPackLayers;

	uint public constant futureBlocks = 2;
	uint public packPrice = 0.0007777777 ether;
	uint public packCardCount = 3;

	constructor() ERC721("Onchain Mecha Pack", "PACK") Ownable(msg.sender) {}

	function setMechaContract(address _onchainMecha) public onlyOwner {
		onchainMecha = OnchainMecha(_onchainMecha);
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
		string memory name = "Unopened Onchain Mecha Pack of Cards";
		string
			memory description = "This is an unopened pack of Onchain Mecha cards. Go to OnchainMecha.xyz to open it!";
		string memory image = Base64.encode(
			bytes((generateSVGofTokenById()))
		);

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
								'", "external_url":"https://onchainmecha.xyz/pack/',
								id.toString(),
								'", "attributes": [{"trait_type": "condition", "value": "unopened',
								'"}], "owner":"',
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

	function generateSVGofTokenById() public view returns (string memory) {
		string memory svg = ILayerMaster(layerMaster).renderMain(unopenedPackLayers, true);

		return svg;
	}

	function mintPack() public payable returns (uint256) {
		require(onchainMecha.akuShardsFound() < 7, "7 Aku shards have been found. Minting has been disabled");

		uint256 id = uint256(keccak256(abi.encodePacked(msg.sender, block.number, totalSupply())));
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
		require(block.number >= pack.blockNumber, "Too soon to open pack");
		bool isStale = block.number > pack.blockNumber + 256;
		if (isStale) {
			// If pack is stale the cards won't be special, this way you can still use on old pack but it can't be gamed to get rares
			bytes32 notRand = keccak256(
				abi.encodePacked(address(this), msg.sender, id)
			);
			// burn pack
			_burn(id);
			// mint cards in OnchainMecha.sol
			for (uint i = 0; i < packCardCount; i++) {
				onchainMecha.mintItem(msg.sender, notRand, i, true);
			}
		} else {
			RLPReader.RLPItem[] memory ls = rlpBytes.toRlpItem().toList();

			// uint256 difficulty = ls[7].toUint();
			// we have to use mixHash on PoS networks -> https://eips.ethereum.org/EIPS/eip-4399
			bytes memory difficulty = ls[13].toBytes();

			uint256 blockNumber = ls[8].toUint();

			require(blockNumber == pack.blockNumber, "Wrong block");

			require(
				blockhash(blockNumber) == keccak256(rlpBytes),
				"Wrong block header"
			);

			bytes32 rand = keccak256(
				abi.encodePacked(difficulty, address(this), msg.sender)
			);
			// burn pack
			_burn(id);
			// mint cards in OnchainMecha.sol
			for (uint i = 0; i < packCardCount; i++) {
				onchainMecha.mintItem(msg.sender, rand, i, false);
			}
		}
	}

	function setPackPrice(uint _packPrice) public onlyOwner {
		packPrice = _packPrice;
	}

	function setPackCardCount(uint _packCardCount) public onlyOwner {
		packCardCount = _packCardCount;
	}

	function withdraw() public onlyOwner {
		payable(msg.sender).transfer(address(this).balance);
	}

	function updateLayerMaster(address _layerMaster) public onlyOwner {
		layerMaster = _layerMaster;
	}

	function updateUnopenedPackLayers(uint8[] memory _unopenedPackLayers) public onlyOwner {
		unopenedPackLayers = _unopenedPackLayers;
	}
}
