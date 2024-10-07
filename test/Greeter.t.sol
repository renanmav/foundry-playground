// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Greeter.sol";

contract GreeterTest is Test {
    Greeter greeter;

    function setUp() public {
        greeter = new Greeter();
    }

    function test_SayHello() public view {
        assertEq(greeter.SayHello(), "Hello World");
    }

    function test_SayHelloTo() public view {
        assertEq(greeter.SayHelloTo("Renan"), "Hello Renan!");
    }
}
