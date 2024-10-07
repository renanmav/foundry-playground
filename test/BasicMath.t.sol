// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/BasicMath.sol";

contract BasicMathTest is Test {
    BasicMath public basicMath;
    uint public MAX_INT = type(uint).max;

    function setUp() public {
        basicMath = new BasicMath();
    }

    function test_Adder() public view {
        (uint sum, bool error) = basicMath.adder(2, 3);
        assertEq(sum, 5);
        assertFalse(error);
    }

    function test_Adder_Overflow() public view {
        (uint sum, bool error) = basicMath.adder(MAX_INT, 1);
        assertEq(sum, 0);
        assertTrue(error);
    }

    function test_Subtractor() public view {
        (uint difference, bool error) = basicMath.subtractor(5, 3);
        assertEq(difference, 2);
        assertFalse(error);
    }

    function test_Subtractor_Underflow() public view {
        (uint difference, bool error) = basicMath.subtractor(3, 5);
        assertEq(difference, 0);
        assertTrue(error);
    }

    function testFuzz_Adder(uint x, uint y) public view {
        (uint sum, bool error) = basicMath.adder(x, y);
        if (x > MAX_INT - y) {
            assertTrue(error);
            assertEq(sum, 0);
        } else {
            assertFalse(error);
            assertEq(sum, x + y);
        }
    }

    function testFuzz_Subtractor(uint x, uint y) public view {
        (uint difference, bool error) = basicMath.subtractor(x, y);
        if (x < y) {
            assertTrue(error);
            assertEq(difference, 0);
        } else {
            assertFalse(error);
            assertEq(difference, x - y);
        }
    }
}
