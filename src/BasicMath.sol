// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract BasicMath {
    function adder(
        uint _a,
        uint _b
    ) external pure returns (uint sum, bool error) {
        // Check for overflow
        if (_a > type(uint).max - _b) {
            return (0, true);
        }
        sum = _a + _b;
        return (sum, false);
    }

    function subtractor(
        uint _a,
        uint _b
    ) external pure returns (uint difference, bool error) {
        // Check for underflow
        if (_a < _b) {
            return (0, true);
        }
        difference = _a - _b;
        return (difference, false);
    }
}
