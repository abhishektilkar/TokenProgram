// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { Script } from "forge-std/Script.sol";
import { TokenProgram2 } from "../src/TokenProgram2.sol";

contract DeployTokenProgram is Script {

    function run() external {
        vm.startBroadcast();
        new TokenProgram2();
        vm.startBroadcast();
    }
}