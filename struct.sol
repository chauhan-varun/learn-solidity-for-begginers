// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PersonContract {
    struct Person {
        string name;
        uint age;
        address add;
    }

    Person public person;

    function setPerson(string memory _name, uint _age, address _add) public {
        person.name = _name;
        person.age = _age;
        person.add = _add;
    }

    function getPerson() view public returns (string memory, uint, address) {
        return (person.name, person.age, person.add);
    }
}
 