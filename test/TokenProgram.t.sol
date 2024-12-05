// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { Test } from "forge-std/Test.sol";
import { TokenProgram2 } from "../src/TokenProgram2.sol";
import { TokenProgram } from "../src/TokenProgram.sol";

contract TokenProgramTest is Test {
    TokenProgram2 tokenProgram2;
    TokenProgram tokenProgram;

    function setUp() external {
        tokenProgram2 = new TokenProgram2();
        tokenProgram = new TokenProgram();
    }

    function testDeployment() public view {
        assertEq(tokenProgram2.name(), "Abhishek");
        assertEq(tokenProgram2.symbol(), "ABETH");
    }

}