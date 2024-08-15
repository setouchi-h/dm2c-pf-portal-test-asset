// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {TestAsset} from "../src/TestERC20.sol";
import {TestToken} from "../src/TestERC721.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployTestERC20 is Script {
    function run() external returns (TestAsset) {
        HelperConfig helperConfig = new HelperConfig();
        (address deployer) = helperConfig.activeNetworkConfig();

        vm.startBroadcast(deployer);
        TestAsset testAsset = new TestAsset();
        vm.stopBroadcast();

        return testAsset;
    }
}

contract DeployTestERC721 is Script {
    function run() external returns (TestToken) {
        HelperConfig helperConfig = new HelperConfig();
        (address deployer) = helperConfig.activeNetworkConfig();

        vm.startBroadcast(deployer);
        TestToken testToken = new TestToken();
        vm.stopBroadcast();

        return testToken;
    }
}
