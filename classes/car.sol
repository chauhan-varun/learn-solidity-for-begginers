// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "./Vehicle.sol";

/// @title Car Contract (extends Vehicle)
/// @notice Demonstrates inheritance and extending constructors.
contract Car is Vehicle {
    /// @notice Number of doors in the car.
    uint256 public noOfDoors;

    /// @notice Sets brand and number of doors.
    constructor(string memory _brand, uint256 _noOfDoors) Vehicle(_brand) {
        noOfDoors = _noOfDoors;
    }

    /// @inheritdoc Vehicle
    function discription() public pure override returns (string memory) {
        return "this is car";
    }
}
