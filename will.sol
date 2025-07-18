// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/// @title Will & Inheritance Simulation Contract
/// @notice Manages timed inheritance with allowances for owner and recipient
contract Inheritance {

    /// @notice Duration of 10 years in seconds
    uint constant TEN_YEARS = 1 hours * 24 * 365 * 10;

    /// @notice Contract start time
    uint public startTime;

    /// @notice Last time owner interacted
    uint public lastVisited;

    /// @notice Owner address
    address public owner;

    /// @notice Recipient address
    address payable public recipient;

    /// @notice Constructor setting recipient and owner
    constructor(address payable _recipient) {
        startTime = block.timestamp;
        lastVisited = block.timestamp;
        owner = msg.sender;
        recipient = _recipient;
    }

    /// @notice Modifier restricting to owner
    modifier onlyOwner() {
        require(owner == msg.sender, "Not owner");
        _;
    }

    /// @notice Modifier restricting to recipient
    modifier onlyRecipient() {
        require(recipient == msg.sender, "Not recipient");
        _;
    }

    /// @notice Deposit ether and update last visited time
    function deposite() public payable onlyOwner {
        lastVisited = block.timestamp;
    }

    /// @notice Refresh last visited time
    function ping() public onlyOwner {
        lastVisited = block.timestamp;
    }

    /// @notice Claim inheritance if required time has passed
    function claim() external onlyRecipient {
        require(block.timestamp >= lastVisited + TEN_YEARS, "Too soon to claim");
        payable(recipient).transfer(address(this).balance);
    }
}
