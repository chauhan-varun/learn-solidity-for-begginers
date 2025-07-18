// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/// @title User Struct and Mapping Example
/// @author Varun Chauhan
/// @notice Stores user information linked to their wallet address.
contract Struct {
    /// @notice Defines a user's details.
    struct User {
        string name;
        uint age;
        address addr;
    }

    /// @notice Mapping from wallet address to user data.
    mapping(address => User) public users;

    /// @notice Initializes the deployer's user info at contract creation.
    /// @param _name The name to associate with the deployer.
    /// @param _age The age to associate with the deployer.
    constructor(string memory _name, uint _age) {
        users[msg.sender] = User({
            name: _name,
            age: _age,
            addr: msg.sender
        });
    }

    /// @notice Gets the caller's stored user details.
    /// @return name The stored user name.
    /// @return age The stored user age.
    /// @return addr The stored user wallet address.
    function getDetails() public view returns (string memory name, uint age, address addr) {
        User storage u = users[msg.sender];
        return (u.name, u.age, u.addr);
    }
}
