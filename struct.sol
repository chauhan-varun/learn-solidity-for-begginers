// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Person Management Contract
/// @author Varun Chauhan
/// @notice Stores and retrieves information about a single person.
contract PersonContract {
    /// @notice Structure to represent a person.
    struct Person {
        string name;
        uint age;
        address add;
    }

    /// @notice Stores a single person's data.
    Person public person;

    /// @notice Sets the person’s information.
    /// @dev Overwrites previous data.
    /// @param _name The person's name.
    /// @param _age The person's age.
    /// @param _add The person's Ethereum address.
    function setPerson(string memory _name, uint _age, address _add) public {
        person.name = _name;
        person.age = _age;
        person.add = _add;
    }

    /// @notice Retrieves the person's details.
    /// @return The name, age, and address of the person.
    function getPerson() public view returns (string memory, uint, address) {
        return (person.name, person.age, person.add);
    }
}
