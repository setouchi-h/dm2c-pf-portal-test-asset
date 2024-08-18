// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {TestERC721} from "../src/TestERC721.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployTestERC721 is Script {
    function run() external returns (TestERC721) {
        HelperConfig helperConfig = new HelperConfig();
        (address deployer) = helperConfig.activeNetworkConfig();

        vm.startBroadcast(deployer);
        TestERC721 testERC721 = new TestERC721();
        vm.stopBroadcast();

        return testERC721;
    }
}
