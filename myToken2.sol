// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @title ERC20 Token using OpenZeppelin Libraries
/// @notice Standard ERC20 token with minting controlled by owner
contract MyToken2 is ERC20, Ownable {
    constructor(address initialOwner)
        ERC20("VARUN", "VAR")
        Ownable(initialOwner)
    {
        _mint(initialOwner, 1 * 10 ** decimals());
    }

    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }
}
