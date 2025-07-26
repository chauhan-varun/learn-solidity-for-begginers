// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/// @title Vehicle Base Contract
/// @notice Demonstrates contract inheritance and virtual functions.
contract Vehicle {
    /// @notice Brand of the vehicle.
    string public brand;

    /// @notice Sets the initial brand.
    constructor(string memory _brand) {
        brand = _brand;
    }

    /// @notice Returns description string for the vehicle.
    function discription() public view virtual returns (string memory) {
        return "this is a vehicle";
    }
}
