// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ControlStructures {
    function fizzBuzz(uint256 _number) public pure returns (string memory) {
        if (_number % 3 == 0 && _number % 5 == 0) {
            return "FizzBuzz";
        } else if (_number % 3 == 0) {
            return "Fizz";
        } else if (_number % 5 == 0) {
            return "Buzz";
        }
        return "Splat";
    }

    error AfterHours(uint256 time);

    // If _time is greater than or equal to 2400, trigger a panic
    // If _time is greater than 2200 or less than 800, revert with a custom error of AfterHours, and include the time provided
    // If _time is between 1200 and 1259, revert with a string message "At lunch!"
    // If _time is between 800 and 1199, return "Morning!"
    // If _time is between 1300 and 1799, return "Afternoon!"
    // If _time is between 1800 and 2200, return "Evening!"
    function doNotDisturb(uint256 _time) public pure returns (string memory) {
        assert(_time < 2400);
        if (_time > 2200 || _time < 800) {
            revert AfterHours(_time);
        } else if (_time >= 1200 && _time < 1300) {
            revert("At lunch!");
        } else if (_time >= 800 && _time < 1200) {
            return "Morning!";
        } else if (_time >= 1300 && _time < 1800) {
            return "Afternoon!";
        }
        return "Evening!";
    }
}
