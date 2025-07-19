// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/// @title User Struct and Mapping Example
/// @author Varun Chauhan
/// @notice Stores user information linked to their wallet address.

contract Struct {
    struct User {
        string name;
        uint age;
        address addr;
    }

    mapping(address => User) private s_users;

    /// @notice Initializes the deployer's user info at contract creation.
    /// @param _name The name to associate with the deployer.
    /// @param _age The age to associate with the deployer.
    constructor(string memory _name, uint _age) {
        s_users[msg.sender] = User({
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
        User storage u = s_users[msg.sender];
        name = u.name;
        age = u.age;
        addr = u.addr;
    }
}
