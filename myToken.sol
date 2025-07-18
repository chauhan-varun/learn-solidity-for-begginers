// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/// @title Basic ERC20-like Token Contract
/// @author Varun Chauhan
/// @notice Minimal token with mint, burn, transfer, and allowance

contract MyToken {

    /// @notice Initial total supply of tokens
    uint public initialSupply;

    /// @notice Owner of the contract
    address public owner;

    /// @notice Balances of each address
    mapping(address => uint) public balances;

    /// @notice Allowances: owner => spender => amount
    mapping(address => mapping(address => uint)) public allowances;

    /// @notice Sets deployer as owner
    constructor() {
        owner = msg.sender;
    }

    /// @notice Modifier to restrict to owner
    modifier onlyOwner() {
        require(msg.sender == owner, "You aren't the owner");
        _;
    }

    /// @notice Approves allowance for spender
    /// @param spender The address allowed to spend
    /// @param value The amount allowed
    /// @return success Confirmation of approval
    function approve(address spender, uint value) public returns (bool success) {
        allowances[msg.sender][spender] = value;
        return true;
    }

    /// @notice Transfer tokens from one address to another using allowance
    /// @param from The address to send tokens from
    /// @param to The address to send tokens to
    /// @param value The amount to be transferred
    /// @return success Confirmation of transfer
    function transferFrom(address from, address to, uint value) public returns (bool success) {
        require(allowances[from][msg.sender] >= value, "Allowance too low");
        require(balances[from] >= value, "Balance too low");
        balances[from] -= value;
        balances[to] += value;
        allowances[from][msg.sender] -= value;
        return true;
    }

    /// @notice Mint tokens to the owner's balance
    /// @param amount The number of tokens to mint
    function mint(uint amount) public onlyOwner {
        balances[owner] += amount;
        initialSupply += amount;
    }

    /// @notice Mint tokens to a specific address
    /// @param amount Number of tokens
    /// @param to Recipient address
    function mintTo(uint amount, address to) public onlyOwner {
        balances[to] += amount;
        initialSupply += amount;
    }

    /// @notice Transfer tokens to another address
    /// @param amount Tokens to send
    /// @param to Recipient address
    function transfer(uint amount, address to) public {
        require(balances[msg.sender] >= amount, "Balance too low");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    /// @notice Burn tokens from sender's balance
    /// @param amount Tokens to burn
    function burn(uint amount) public {
        require(balances[msg.sender] >= amount, "Balance too low");
        balances[msg.sender] -= amount;
        initialSupply -= amount;
    }
}