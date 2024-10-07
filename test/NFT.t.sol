// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/NFT.sol";

contract NFTTest is Test {
    NFT nft;

    function setUp() public {
        nft = new NFT();
    }

    function testMint() public {
        address recipient = address(0x123);
        uint256 tokenId = nft.mint{value: 0.1 ether}(recipient);

        assertEq(tokenId, 1);
        assertEq(nft.ownerOf(tokenId), recipient);
    }

    function testMintWithoutValue() public {
        address recipient = address(0x123);

        // Try to mint without sending any ether
        bool success = true;
        try nft.mint{value: 0 ether}(recipient) {
            success = true;
        } catch {
            success = false;
        }

        // The mint should fail (success should be false)
        assertFalse(success, "Mint should have failed");

        // Check that no token was minted
        vm.expectRevert(abi.encodeWithSelector(IERC721Errors.ERC721NonexistentToken.selector, 1));
        nft.ownerOf(1);
    }
}
