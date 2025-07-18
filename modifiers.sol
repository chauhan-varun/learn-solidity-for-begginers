// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/// @title Ownership Example Contract
/// @author Varun Chauhan
/// @notice Demonstrates owner-restricted functions with a custom modifier.
contract Example {
    /// @notice The address of the contract owner.
    address public owner;

    /// @notice Sets the deployer as the initial owner.
    constructor() {
        owner = msg.sender;
    }

    /// @notice Restricts access to only the contract owner.
    modifier OnlyOwner() {
        require(owner == msg.sender, "you aren't the owner");
        _;
    }

    /// @notice Transfers ownership to a new address.
    /// @dev Only callable by the current owner.
    /// @param _newOwner The address of the new contract owner.
    function setOwner(address _newOwner) public OnlyOwner {
        owner = _newOwner;
    }

    /// @notice Returns the current owner's address.
    /// @return The address of the owner.
    function getOwner() public view returns (address) {
        return owner;
    }
}
