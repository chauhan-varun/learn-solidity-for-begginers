// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Person Management Contract
/// @author Varun Chauhan
/// @notice Stores and retrieves information about a single person.

contract PersonContract {
    struct Person {
        string name;
        uint age;
        address addr;
    }

    Person private s_person;

    /// @notice Sets the person’s information.
    /// @param _name The person's name.
    /// @param _age The person's age.
    /// @param _addr The person's Ethereum address.
    function setPerson(string memory _name, uint _age, address _addr) public {
        s_person = Person(_name, _age, _addr);
    }

    /// @notice Retrieves the person's details.
    /// @return name The stored name.
    /// @return age The stored age.
    /// @return addr The stored address.
    function getPerson() public view returns (string memory name, uint age, address addr) {
        name = s_person.name;
        age = s_person.age;
        addr = s_person.addr;
    }
}
