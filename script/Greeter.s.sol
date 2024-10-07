// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/Greeter.sol";

contract GreeterScript is Script {
    function run() public {
        vm.startBroadcast();

        Greeter greeter = new Greeter();

        console.log("SayHello(): ", greeter.SayHello());
        console.log("SayHelloTo(Renan): ", greeter.SayHelloTo("Renan"));

        vm.stopBroadcast();
    }
}
