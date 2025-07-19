// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Basic Calculator Contract
/// @author Varun Chauhan
/// @notice Offers arithmetic functions and stores the latest result.

contract Calculator {
    uint256 private s_ans;

    /// @notice Adds two numbers and stores the result.
    function add(uint256 a, uint256 b) public {
        s_ans = a + b;
    }

    /// @notice Subtracts the second number from the first and stores the result.
    function sub(uint256 a, uint256 b) public {
        s_ans = a - b;
    }

    /// @notice Multiplies two numbers and stores the result.
    function mul(uint256 a, uint256 b) public {
        s_ans = a * b;
    }

    /// @notice Divides the first number by the second and stores the result.
    /// @param a The numerator.
    /// @param b The denominator.
    function div(uint256 a, uint256 b) public {
        require(b != 0, "denominator can't be zero");
        s_ans = a / b;
    }

    /// @notice Returns the result of the most recent operation.
    /// @return The current answer stored in the contract.
    function getAns() public view returns (uint256) {
        return s_ans;
    }
}
