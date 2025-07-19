// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/// @title Ownership Example Contract
/// @notice Demonstrates basic owner-restricted logic with a custom modifier.
contract Example {
    /// @notice Immutable owner address set at deployment.
    address private immutable i_owner;

    /// @notice Error for unauthorized owner-only access.
    error NotOwner();

    /// @notice Sets the deployer as the contract owner.
    constructor() {
        i_owner = msg.sender;
    }

    /// @notice Restricts function access to owner only.
    modifier onlyOwner() {
        if (i_owner != msg.sender) revert NotOwner();
        _;
    }

    /// @notice This is a dummy, non-functional function. Owner cannot be changed after deployment.
    function setOwner() public view onlyOwner {
        revert("Owner cannot be changed due to immutable setting");
    }

    /// @notice Returns the current owner's address.
    function getOwner() public view returns (address) {
        return i_owner;
    }
}
