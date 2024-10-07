// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/BasicMath.sol";

contract BasicMathScript is Script {
    function run() external {
        vm.startBroadcast();

        BasicMath basicMath = new BasicMath();

        (uint sum, bool overflow) = basicMath.adder(type(uint).max, 1);
        console.log("Sum:", sum);
        console.log("Overflow:", overflow);

        (uint difference, bool underflow) = basicMath.subtractor(0, 1);
        console.log("Difference:", difference);
        console.log("Underflow:", underflow);

        vm.stopBroadcast();
    }
}
