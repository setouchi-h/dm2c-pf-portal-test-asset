// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {TestWETH} from "../src/TestWETH.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployTestWETH is Script {
    function run() external returns (TestWETH) {
        HelperConfig helperConfig = new HelperConfig();
        (address deployer) = helperConfig.activeNetworkConfig();

        vm.startBroadcast(deployer);
        TestWETH testWETH = new TestWETH();
        vm.stopBroadcast();

        return testWETH;
    }
}
