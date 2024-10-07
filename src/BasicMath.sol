// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract BasicMath {
    function adder(uint256 _a, uint256 _b) external pure returns (uint256 sum, bool error) {
        // Check for overflow
        if (_a > type(uint256).max - _b) {
            return (0, true);
        }
        sum = _a + _b;
        return (sum, false);
    }

    function subtractor(uint256 _a, uint256 _b) external pure returns (uint256 difference, bool error) {
        // Check for underflow
        if (_a < _b) {
            return (0, true);
        }
        difference = _a - _b;
        return (difference, false);
    }
}
