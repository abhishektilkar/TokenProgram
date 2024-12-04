// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { Test } from "forge-std/Test.sol";
import { TokenProgram2 } from "../src/TokenProgram2.sol";

contract TokenProgramTest is Test {
    TokenProgram2 tokenProgram;

    function setUp() external {
        tokenProgram = new TokenProgram2();
    }

    function testDeployment() public view {
        assertEq(tokenProgram.name(), "Abhishek");
        assertEq(tokenProgram.symbol(), "ABETH");
    }

}