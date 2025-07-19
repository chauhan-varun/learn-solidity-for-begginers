// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Simplified ENS-like Name Registry
/// @author Varun Chauhan
/// @notice Maps addresses to user-friendly names.

contract ENS {
    mapping(address => string) private s_names;

    /// @notice Registers a name for the sender's address.
    /// @param _name The name to associate with the sender.
    function signup(string memory _name) public {
        s_names[msg.sender] = _name;
    }

    /// @notice Retrieves the name associated with the sender's address.
    /// @return name The name linked to the sender.
    function getUser() public view returns (string memory name) {
        name = s_names[msg.sender];
    }
}
