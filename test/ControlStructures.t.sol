// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/ControlStructures.sol";

contract ControlStructuresTest is Test {
    ControlStructures public controlStructures;

    function setUp() public {
        controlStructures = new ControlStructures();
    }

    function test_FizzBuzz() public view {
        assertEq(controlStructures.fizzBuzz(1), "Splat");
        assertEq(controlStructures.fizzBuzz(3), "Fizz");
        assertEq(controlStructures.fizzBuzz(5), "Buzz");
        assertEq(controlStructures.fizzBuzz(15), "FizzBuzz");
        assertEq(controlStructures.fizzBuzz(30), "FizzBuzz");
    }

    function test_DoNotDisturb_Morning() public view {
        assertEq(controlStructures.doNotDisturb(800), "Morning!");
        assertEq(controlStructures.doNotDisturb(1000), "Morning!");
        assertEq(controlStructures.doNotDisturb(1199), "Morning!");
    }

    function test_DoNotDisturb_Afternoon() public view {
        assertEq(controlStructures.doNotDisturb(1300), "Afternoon!");
        assertEq(controlStructures.doNotDisturb(1500), "Afternoon!");
        assertEq(controlStructures.doNotDisturb(1799), "Afternoon!");
    }

    function test_DoNotDisturb_Evening() public view {
        assertEq(controlStructures.doNotDisturb(1800), "Evening!");
        assertEq(controlStructures.doNotDisturb(2000), "Evening!");
        assertEq(controlStructures.doNotDisturb(2200), "Evening!");
    }

    function test_DoNotDisturb_Lunch() public {
        vm.expectRevert("At lunch!");
        controlStructures.doNotDisturb(1200);

        vm.expectRevert("At lunch!");
        controlStructures.doNotDisturb(1230);

        vm.expectRevert("At lunch!");
        controlStructures.doNotDisturb(1259);
    }

    function test_DoNotDisturb_AfterHours() public {
        vm.expectRevert(
            abi.encodeWithSelector(ControlStructures.AfterHours.selector, 2201)
        );
        controlStructures.doNotDisturb(2201);

        vm.expectRevert(
            abi.encodeWithSelector(ControlStructures.AfterHours.selector, 0)
        );
        controlStructures.doNotDisturb(0);

        vm.expectRevert(
            abi.encodeWithSelector(ControlStructures.AfterHours.selector, 799)
        );
        controlStructures.doNotDisturb(799);
    }

    function test_DoNotDisturb_InvalidTime() public {
        vm.expectRevert();
        controlStructures.doNotDisturb(2400);

        vm.expectRevert();
        controlStructures.doNotDisturb(2500);

        vm.expectRevert();
        controlStructures.doNotDisturb(2401);

        vm.expectRevert();
        controlStructures.doNotDisturb(9999);

        vm.expectRevert();
        controlStructures.doNotDisturb(10000);
    }
}
