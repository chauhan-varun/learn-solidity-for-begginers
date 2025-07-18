// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Simplified ENS-like Name Registry
/// @author Varun Chauhan
/// @notice Maps addresses to user-friendly names.
contract ENS {

    /// @notice Stores names mapped to wallet addresses.
    mapping(address => string) public names;

    /// @notice Registers a name for the sender's address.
    /// @param _name The name to associate with the sender.
    function signup(string memory _name) public {
        names[msg.sender] = _name;
    }

    /// @notice Retrieves the name associated with the sender's address.
    /// @return The name linked to the sender.
    function getUser() public view returns (string memory) {
        return names[msg.sender];
    }
}