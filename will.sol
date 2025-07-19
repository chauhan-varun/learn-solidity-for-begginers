// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/// @title Will & Inheritance Simulation Contract
/// @notice Manages timed inheritance with allowances for owner and recipient
contract Inheritance {
    uint256 public constant TEN_YEARS = 1 hours * 24 * 365 * 10;

    uint256 public s_startTime;
    uint256 public s_lastVisited;

    address public immutable i_owner;
    address payable public immutable i_recipient;

    error WILL__NotOwner();
    error WILL__NotRecipient();
    error WILL__TransactionFailed();

    modifier onlyOwner() {
        if (i_owner != msg.sender) revert WILL__NotOwner();
        _;
    }

    modifier onlyRecipient() {
        if (i_recipient != msg.sender) revert WILL__NotRecipient();
        _;
    }

    constructor(address payable _recipient) {
        s_startTime = block.timestamp;
        s_lastVisited = block.timestamp;
        i_owner = msg.sender;
        i_recipient = _recipient;
    }

    /// @notice Deposit ether and update last visited time
    function deposit() public payable onlyOwner {
        s_lastVisited = block.timestamp;
    }

    /// @notice Refresh last visited time
    function ping() public onlyOwner {
        s_lastVisited = block.timestamp;
    }

    /// @notice Claim inheritance if required time has passed
    function claim() external onlyRecipient {
        if (block.timestamp < s_lastVisited + TEN_YEARS) revert("Too soon to claim");

        uint balance = address(this).balance;
        (bool success, ) = i_recipient.call{value: balance}("");
        if(!success) revert WILL__TransactionFailed();
    }
}
