// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Greeter {
    function SayHello() external pure returns (string memory) {
        return "Hello World";
    }

    function SayHelloTo(string memory _name) external pure returns (string memory) {
        return string.concat("Hello ", _name, "!");
    }
}
