// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {TestAsset} from "../src/TestAsset.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployTestAsset is Script {
    function run() external returns (TestAsset) {
        HelperConfig helperConfig = new HelperConfig();
        (address deployer) = helperConfig.activeNetworkConfig();

        vm.startBroadcast(deployer);
        TestAsset testAsset = new TestAsset();
        vm.stopBroadcast();

        return testAsset;
    }
}
