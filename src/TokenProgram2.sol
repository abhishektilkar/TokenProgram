// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import "../lib/openzeppelin-contracts/contracts/access/Ownable.sol";

contract TokenProgram2 is ERC20, Ownable {
    constructor() ERC20("Abhishek", "ABETH") Ownable(msg.sender) {
        _mint(msg.sender, 10000000000);
    }

    function mintTo(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }
}
