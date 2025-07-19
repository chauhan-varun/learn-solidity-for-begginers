// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/// @title Dynamic Array Example
/// @author Varun Chauhan
/// @notice This contract demonstrates how to use dynamic arrays in Solidity.

contract Array {
    /// @notice Stores a list of unsigned integers.
    uint[] private s_numbers;

    /// @notice Adds two values to the dynamic array.
    /// @param value1 The first value to add.
    /// @param value2 The second value to add.
    function dynamicArraySet(uint value1, uint value2) public {
        s_numbers.push(value1);
        s_numbers.push(value2);
    }

    /// @notice Retrieves the value at a specified index.
    /// @param index The position in the array.
    /// @return value The value at the given index.
    function dynamicArrayGet(uint index) public view returns (uint value) {
        value = s_numbers[index];
    }
}