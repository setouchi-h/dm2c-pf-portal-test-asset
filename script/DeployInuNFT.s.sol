// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {InuNFT} from "../src/InuNFT.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployInuNFT is Script {
    function run() external returns (InuNFT) {
        HelperConfig helperConfig = new HelperConfig();
        (address deployer) = helperConfig.activeNetworkConfig();

        vm.startBroadcast(deployer);
        InuNFT inuNFT = new InuNFT();
        vm.stopBroadcast();

        return inuNFT;
    }
}
