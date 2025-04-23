// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Mytoken is ERC20, Ownable {

    constructor() ERC20("VARUN", "VAR") Ownable(msg.sender){
        _mint(msg.sender, 1 * 10 ** 18);
    }

    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }
}