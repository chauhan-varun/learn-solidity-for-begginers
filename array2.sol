// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/// @title Simple Storage of People
/// @author Varun chauhan
/// @notice You can use this contract to store and retrieve people's information.
contract SimpleStorage {
    /// @notice Stores information about a person.
    struct People {
        string name;
        int id;
    }

    /// @notice Dynamic array to store people.
    People[] public people;

    /// @notice Adds a new person to the storage.
    /// @param _name The person's name.
    /// @param _id The person's ID (can be negative if needed).
    function addPeople(string memory _name, int _id) public {
        people.push(People(_name, _id));
    }
}
