// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Uber {
    address public owner;
    uint balance;
    mapping(address => uint) balances;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(owner == msg.sender);
        _;
    }
}