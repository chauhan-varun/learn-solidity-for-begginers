// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Loop Contract for Summation
/// @author Varun Chauhan
/// @notice Demonstrates looping over an array to calculate the sum of its elements.
contract Loop {

    uint public sum = 0;

    /// @notice Adds all numbers in an array and returns the sum.
    /// @param num An array of unsigned integers to be summed.
    /// @return The sum of all elements in the array.
    function addNumber(uint[] memory num) public returns (uint) {
        sum = 0; // Reset sum before calculation
        for (uint i = 0; i < num.length; i++) {
            sum += num[i];
        }
        return sum;
    }
}