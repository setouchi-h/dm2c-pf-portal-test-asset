// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {TestSMP} from "../src/TestSMP.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployTestSMP is Script {
    function run() external returns (TestSMP) {
        HelperConfig helperConfig = new HelperConfig();
        (address deployer) = helperConfig.activeNetworkConfig();

        vm.startBroadcast(deployer);
        TestSMP testSMP = new TestSMP();
        vm.stopBroadcast();

        return testSMP;
    }
}
