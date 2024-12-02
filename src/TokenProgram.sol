// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract TokenProgram {
    // uint256 public number;

    string public name = "";
    string public symbol = "";

    uint256 totalSupply = 0;
    mapping(address => uint) public balances;
    mapping(address => mapping(address => uint256) sender) allowances;
    address public immutable i_owner;

    constructor() {
        i_owner = msg.sender;
    }

    function mint(uint256 amount) public {
        require(i_owner == msg.sender);
        balances[i_owner] += amount;
        totalSupply += amount;
    }

    function mintTo(uint256 amount, address to) public {
        require(i_owner == msg.sender);
        balances[to] += amount;
        totalSupply += amount;
    }

    function transferToken(uint256 amount, address to) public {
        require(balances[msg.sender] >= amount);
        balances[to] += amount;
        balances[msg.sender] -= amount;
    }

    function transferTokenOnBehalf(uint256 amount, address from, address to) public {
        require(balances[from] >= amount);
        require(allowances[msg.sender][from] >= amount);

        balances[from] -= amount;
        allowances[msg.sender][from] -= amount;
        balances[to] += amount;
    }

    function burnToken(uint256 amount) public {
        require(balances[msg.sender] >= amount);
        balances[msg.sender] -= amount;
        totalSupply -= amount;
    }
}
