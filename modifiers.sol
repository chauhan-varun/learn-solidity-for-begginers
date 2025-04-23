// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Example {

    address public owner;
    // We need to do it like that because we are creating a variable in our contract and then using 
    // msg.sender as the value for this variable
    constructor () {
        owner = msg.sender; // This is the person who deployed this contract, not an arbitrary user account
    }
    modifier OnlyOwner() {
        require(owner == msg.sender, "you arent the owner");
        _;
    }

    function setOwner(address _newOwner) public OnlyOwner {
        owner = _newOwner; // sets the new owner of this contract to a specific address
    }

    function getOwner () public view returns (address){
        return owner;
    }
}