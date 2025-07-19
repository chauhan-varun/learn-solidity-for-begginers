// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Loop Contract for Summation
/// @author Varun Chauhan
/// @notice Demonstrates looping over an array to calculate the sum of its elements.

contract Loop {
    uint private s_sum;

    /// @notice Adds all numbers in an array and returns the sum.
    /// @param nums An array of unsigned integers to be summed.
    /// @return sum The sum of all elements in the array.
    function addNumbers(uint[] memory nums) public returns (uint sum) {
        s_sum = 0; 
        for (uint i = 0; i < nums.length; i++) {
            s_sum += nums[i];
        }
        sum = s_sum;
    }
}
