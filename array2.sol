// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract SimpleStorage {
    struct People {
        string name;
        int id;
    }

    People[] public people;

    function addPeople(string memory _name, int _id) public{
        people.push(People(_name, _id));
    }

    
}
