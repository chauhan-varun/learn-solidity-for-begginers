// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {

    struct Person {
        string name;
        uint256 favNum;
    }

    Person[] public Persons;
    mapping (string => uint256) public favNum;

    function set(string memory _name, uint256 _favNum) public virtual {
        Persons.push(Person(_name, _favNum));
        favNum[_name]=_favNum;

    }

    function get(string memory _name) public view returns(uint256) {
        return favNum[_name];
    }

}
