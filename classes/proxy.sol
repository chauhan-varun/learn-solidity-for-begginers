// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

interface IStorage {
    function addNum() external ;
    function getNum() external  view returns (uint);
}

contract Proxy2 {
    constructor() {
    }

    function proxyAdd() public {
        IStorage(0x5FD6eB55D12E759a21C09eF703fe0CBa1DC9d88D).addNum();
    }
    function proxyGet() public  view returns (uint) {
        return IStorage(0x5FD6eB55D12E759a21C09eF703fe0CBa1DC9d88D).getNum();
    }
}