// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {
    uint ans = 0;
    function add(uint a, uint b) public  {
        ans = a+b;
    }

    function sub(uint a, uint b) public  {
        ans = a-b;
    }

        function mul(uint a, uint b) public  {
        ans = a*b;
    }

        function div(uint a, uint b) public  {
        require(b != 0, "denominator cant be zero");
        ans = a/b;
    }

    function getAns() public view returns (uint256) {
        return  ans;
    }
}