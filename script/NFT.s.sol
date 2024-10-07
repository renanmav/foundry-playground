// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/NFT.sol";

contract NFTScript is Script {
    function run() external {
        vm.startBroadcast();

        NFT nft = new NFT();
        address recipient = address(0x123);

        uint256 tokenId = nft.mint{value: 0.1 ether}(recipient);
        console.log("Minted NFT with tokenId (0.1 ETH):", tokenId);

        console.log("Minting NFT with tokenId (0 ETH)...");
        try nft.mint(recipient) {
            require(false, "Minted NFT with tokenId (0 ETH)");
        } catch Error(string memory reason) {
            console.log("Mint failed with reason:", reason);
        }

        vm.stopBroadcast();
    }
}
