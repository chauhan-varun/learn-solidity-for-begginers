// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Inheritance {
    uint tenYears;
    uint startTime;
    uint public lastVisited;
    address  owner;
    address payable recipient;

    constructor (address payable _recipient) public {
        tenYears = 1 hours * 24 * 365 * 10;
        startTime = block.timestamp;
        lastVisited = block.timestamp;
        owner = msg.sender;
        recipient = _recipient;
    }

    modifier onlyOwner() {
        require(owner == msg.sender);
        _;
    }
    modifier onlyRecipient() {
        require(recipient == msg.sender);
        _;
    }

    function deposite() public payable onlyOwner {
        lastVisited = block.timestamp;
    }
    function ping() public onlyOwner {
        lastVisited = block.timestamp;
    }
    function claim() external onlyRecipient {
        require(lastVisited<block.timestamp - tenYears);
        payable(recipient).transfer(address(this).balance);
    }
}