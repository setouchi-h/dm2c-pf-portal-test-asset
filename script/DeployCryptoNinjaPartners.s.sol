// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {CryptoNinjaPartners} from "../src/CryptoNinjaPartners.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployCryptoNinjaPartners is Script {
    function run() external returns (CryptoNinjaPartners) {
        HelperConfig helperConfig = new HelperConfig();
        (address deployer) = helperConfig.activeNetworkConfig();

        vm.startBroadcast(deployer);
        CryptoNinjaPartners cryptoNinjaPartners = new CryptoNinjaPartners();
        vm.stopBroadcast();

        return cryptoNinjaPartners;
    }
}
