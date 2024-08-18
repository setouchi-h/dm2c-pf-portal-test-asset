// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {TestTetherToken} from "../src/TestTetherToken.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployTestTetherToken is Script {
    function run() external returns (TestTetherToken) {
        HelperConfig helperConfig = new HelperConfig();
        (address deployer) = helperConfig.activeNetworkConfig();

        vm.startBroadcast(deployer);
        TestTetherToken testTetherToken = new TestTetherToken();
        vm.stopBroadcast();

        return testTetherToken;
    }
}
