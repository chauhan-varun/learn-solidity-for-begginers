// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Struct {
    struct User{
        string name;
        uint age;
        address addr;
    }
    
    mapping(address => User) public users;
    constructor(string memory _name, uint _age) {
        users[msg.sender] = User({
            name: _name,
            age: _age,
            addr: msg.sender
        });
     }

    function getDetails() public view returns (string memory, uint, address) {
        return (users[msg.sender].name, users[msg.sender].age, users[msg.sender].addr);
    }

}