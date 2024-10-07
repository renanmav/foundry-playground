// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";

contract NFT is ERC721 {
    uint256 public currentTokenId;
    uint256 public constant MINT_PRICE = 0.00001 ether;

    constructor() ERC721("My NFT", "NFT") {}

    function mint(address recipient) public payable returns (uint256) {
        require(msg.value >= MINT_PRICE, "Insufficient payment");
        uint256 newItemId = ++currentTokenId;
        _safeMint(recipient, newItemId);
        return newItemId;
    }
}
