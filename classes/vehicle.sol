// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Vehicle {
    string public  brand;
    constructor(string memory _brand) {
        brand = _brand;
    }

    function discription() public view virtual returns (string memory) {
        return "this is a vehicle";
    }
}                                                                                                                                                                                                                                                                            