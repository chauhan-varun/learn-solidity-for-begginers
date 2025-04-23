// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
import "./Vehicle.sol"; 

contract Car is Vehicle {
    // Properties
    uint256 public noOfDoors;

    constructor(string memory _brand, uint256 _noOfDoors) Vehicle(_brand){
        noOfDoors = _noOfDoors;
    }

    function discription() public pure override returns (string memory) {
        return "this is car";
    }
}
