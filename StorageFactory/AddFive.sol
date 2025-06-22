// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import { SimpleStorage } from "./SimpleStorage.sol";

contract AddFive is SimpleStorage {

    function set(string memory _name, uint256 _favNum) public override  {
        Persons.push(Person(_name, _favNum + 5));
        favNum[_name] = _favNum+5;
    }
}   
