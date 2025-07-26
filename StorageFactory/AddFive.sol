// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import { SimpleStorage } from "./SimpleStorage.sol";

/// @title AddFive Contract
/// @notice Extends SimpleStorage to always add five to favorite number.
contract AddFive is SimpleStorage {
    /// @notice Override set to add five to provided number.
    /// @param _name The person's name.
    /// @param _favNum The favorite number (before adding five).
    function set(string memory _name, uint256 _favNum) public override {
        Persons.push(Person(_name, _favNum + 5));
        favNum[_name] = _favNum + 5;
    }
}
