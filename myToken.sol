// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/// @title Basic ERC20-like Token Contract
/// @author Varun Chauhan
/// @notice Minimal token with mint, burn, transfer, and allowance

contract MyToken {

    /// @notice Tracks the total supply of tokens.
    uint public s_initialSupply;

    /// @notice Immutable address of the contract owner.
    address public immutable i_owner;

    /// @notice Balances of each address.
    mapping(address => uint) private s_balances;

    /// @notice Allowances: owner => spender => amount.
    mapping(address => mapping(address => uint)) private s_allowances;

    /// @notice Restricts functions to contract owner only.
    modifier onlyOwner() {
        if (i_owner != msg.sender) revert NotOwner();
        _;
    }

    /// @notice Error thrown if caller is not owner.
    error NotOwner();

    /// @notice Contract constructor that sets the deployer as owner.
    constructor() {
        i_owner = msg.sender;
    }

    /// @notice Approves a spender to transfer up to a certain number of tokens on behalf of caller.
    /// @param spender Address allowed to transfer tokens.
    /// @param value Number of tokens approved.
    /// @return success Returns true if approval is successful.
    function approve(address spender, uint value) public returns (bool success) {
        s_allowances[msg.sender][spender] = value;
        return true;
    }

    /// @notice Transfers tokens from one address to another using allowance.
    /// @param from The address from which tokens are transferred.
    /// @param to The recipient address.
    /// @param value Number of tokens to transfer.
    /// @return success Returns true if transfer succeeds.
    function transferFrom(address from, address to, uint value) public returns (bool success) {
        if (s_allowances[from][msg.sender] < value) revert("Allowance too low");
        if (s_balances[from] < value) revert("Balance too low");
        s_balances[from] -= value;
        s_balances[to] += value;
        s_allowances[from][msg.sender] -= value;
        return true;
    }

    /// @notice Mints new tokens to the owner's balance.
    /// @param amount Number of tokens to mint.
    function mint(uint amount) public onlyOwner {
        s_balances[i_owner] += amount;
        s_initialSupply += amount;
    }

    /// @notice Mints new tokens to a specified address.
    /// @param amount Number of tokens to mint.
    /// @param to Recipient address.
    function mintTo(uint amount, address to) public onlyOwner {
        s_balances[to] += amount;
        s_initialSupply += amount;
    }

    /// @notice Transfers tokens from caller to another address.
    /// @param amount Number of tokens to transfer.
    /// @param to Recipient address.
    function transfer(uint amount, address to) public {
        if (s_balances[msg.sender] < amount) revert("Balance too low");
        s_balances[msg.sender] -= amount;
        s_balances[to] += amount;
    }

    /// @notice Burns tokens from the caller's balance.
    /// @param amount Number of tokens to burn.
    function burn(uint amount) public {
        if (s_balances[msg.sender] < amount) revert("Balance too low");
        s_balances[msg.sender] -= amount;
        s_initialSupply -= amount;
    }
}
