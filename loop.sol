// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Loop {
    uint sum = 0;
    function addNumber(uint[] memory num) public returns (uint){
        for (uint i=0; i<num.length; i++) 
        {
            sum+=num[i];
        }

        return sum;
    } 
}