// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/// @title Simple Uber-like Ride Booking Contract
/// @author Varun Chauhan
/// @notice This contract allows booking and tracking balances for rides.
contract Uber {

    /// @notice Immutable owner address set at contract deployment.
    address public immutable i_owner;

    /// @notice Current contract balance (demonstrative only).
    uint public s_balance;

    /// @notice Mapping of user addresses to their balances.
    mapping(address => uint) private s_balances;

    /// @notice Restricts functions to only the contract owner.
    modifier onlyOwner() {
        if (i_owner != msg.sender) revert NotOwner();
        _;
    }

    /// @notice Error thrown when caller is not the owner.
    error NotOwner();

    /// @notice Initializes the contract owner as the deployer.
    constructor() {
        i_owner = msg.sender;
    }

    // Additional ride-booking and payment functions would be added here.
}