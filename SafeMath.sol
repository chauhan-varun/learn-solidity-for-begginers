// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/// @title SafeMath Example
/// @author Varun Chauhan
/// @notice Demonstrates unchecked addition to avoid overflow errors.
contract SafeMath {

    uint8 public num = 255;

    /// @notice Increments `num` by 1 using unchecked math to bypass overflow checks.
    function add() public {
        unchecked {
            num = num + 1;
        }
    }
}