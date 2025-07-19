// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/// @title Simple Storage of People
/// @author Varun Chauhan
/// @notice You can use this contract to store and retrieve people's information.

contract SimpleStorage {
    struct People {
        string name;
        int id;
    }

    People[] private s_people;

    /// @notice Adds a new person to the storage.
    /// @param _name The person's name.
    /// @param _id The person's ID.
    function addPeople(string memory _name, int _id) public {
        s_people.push(People(_name, _id));
    }
}