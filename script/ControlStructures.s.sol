// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/ControlStructures.sol";

contract ControlStructuresScript is Script {
    function run() public {
        vm.startBroadcast();

        new ControlStructures();

        vm.stopBroadcast();
    }
}
