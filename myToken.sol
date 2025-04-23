// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract MyToken {
    uint public initalSupply;
    address public owner;
    mapping(address => uint) public balances;
    mapping(address => mapping(address => uint)) allowances;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(owner == msg.sender);
        _;
    }

    function approve(
        address _sender,
        uint _value
    ) public returns (bool success) {
        allowances[msg.sender][_sender] += _value;
        return true;
    }

    function transferFrom(
        address _from,
        address _to,
        unit value
    ) public returns (bool success) {
        require(allowances[_from][msg.sender] > _value);
        require(balances[_from] > _value);
        balances[_from] -= _value;
        balances[_to] += _value;
        allowances[_from][msg.sender] -= _value;
    }

    function mint(uint amount) public onlyOwner {
        balances[owner] += amount;
        initalSupply += amount;
    }

    function mintTo(uint amount, address to) public onlyOwner {
        balances[to] += amount;
        initalSupply += amount;
    }
    function transfer(uint amount, address to) public {
        require(balances[msg.sender] > amount);
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }
    function burn(uint amount) public {
        require(balances[msg.sender] > amount);
        balances[msg.sender] -= amount;
        initalSupply -= amount;
    }
}
