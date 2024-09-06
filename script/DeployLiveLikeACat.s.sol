// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {LiveLikeACat} from "../src/LiveLikeACat.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployLiveLikeACat is Script {
    function run() external returns (LiveLikeACat) {
        HelperConfig helperConfig = new HelperConfig();
        (address deployer) = helperConfig.activeNetworkConfig();

        vm.startBroadcast(deployer);
        LiveLikeACat liveLikeACat = new LiveLikeACat();
        vm.stopBroadcast();

        return liveLikeACat;
    }
}
