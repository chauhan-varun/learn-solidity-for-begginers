// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SafeMath {
    uint8 public num = 255;
    function add() public {
        unchecked {
            num = num + 1;
        }
    }
}