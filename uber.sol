// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/// @title Simple Uber-like Ride Booking Contract
/// @notice This contract allows booking and tracking balances for rides
contract Uber {

    /// @notice Owner of contract
    address public owner;

    /// @notice Contract balance tracker
    uint public balance;

    /// @notice Mapping of user addresses to balances
    mapping(address => uint) public balances;

    /// @notice Sets the deployer as owner
    constructor() {
        owner = msg.sender;
    }

    /// @notice Modifier restricting function to owner only
    modifier onlyOwner() {
        require(owner == msg.sender, "You aren't the owner");
        _;
    }

    // Additional ride booking/storage/payments logic would go here
}
