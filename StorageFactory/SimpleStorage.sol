// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/// @title SimpleStorage Contract
/// @notice Stores person structs and favorite numbers in a mapping.
contract SimpleStorage {
    struct Person {
        string name;
        uint256 favNum;
    }

    /// @notice Array of all stored people.
    Person[] public Persons;

    /// @notice Favorite number by name.
    mapping(string => uint256) public favNum;

    /// @notice Adds a new person and stores their favorite number.
    function set(string memory _name, uint256 _favNum) public virtual {
        Persons.push(Person(_name, _favNum));
        favNum[_name] = _favNum;
    }

    /// @notice Gets the favorite number by name.
    function get(string memory _name) public view returns (uint256) {
        return favNum[_name];
    }
}
