// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ENS {
    mapping (address => string) public names;
    function signup(string memory _name) public {
        names[msg.sender] = _name;
    }

    function getUser() view public returns (string memory)  {
        return names[msg.sender];
    }
}
 