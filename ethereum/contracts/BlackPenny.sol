//SPDX-License-Indentifier-GPL3.0

///@notice: file built for NFT mintig, for studying purpose

///@author: Joseph Dayan, prazdnique@gmail.com

pragma solidity ^0.8.0;

//NFT-standard ERC721 importers:
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

// inheritance:
contract BlackPenny is ERC721 {

//a Counter variable generates incremental ID 
	using Counters for Counters.Counter;
	Counters.Counter private _tokenIdCounter;

// constructor initializing ERC721 contract by its name, gives name of NFT and symbol of NFT:
	constructor() ERC721("BlackPenny", "BPS") {}
	
// overrides default _baseURI of ERC721 by returning our own URI
	function _baseURI() internal pure override returns (string memory) {
		return "https://2F5LtiKmVVAHW5K4tlxQn50dLxK_3W3iDaUTDGejL9vBLyfov/api/erc721";
	}

// minting: less than 5 NFTs only, increment by 1, and call function _safeMint() of OpenZepp. to publish the token
	function mint(address to) public returns (uint256) {
		require(_tokenIdCounter.current() <5);
		_tokenIdCounter.increment();
		_safeMint(to, _tokenIdCounter.current());
		return _tokenIdCounter.current();
	}
}