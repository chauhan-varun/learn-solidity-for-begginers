// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Array  {
    constructor() {
        
    }

    uint[] public numbers;
    //in static array we give the length initially
    function dynamicArraySet(uint value1, uint value2) public {
        numbers.push(value1);
        numbers.push(value2);
    }

    function dynamicArrayGet(uint index) public view returns (uint) {
        return numbers[index];
        
    }
}