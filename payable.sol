// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mycontract {
    uint public amount;
    function deposite() public payable {
        amount+=msg.value;
    }
    function drain(address payable recipient) public payable {
        payable(recipient).transfer(amount);
    }
    function getBalance() view public returns (uint) {
        return address(this).balance;
    }
}