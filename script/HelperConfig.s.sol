// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";

contract HelperConfig is Script {
    struct NetworkConfig {
        address deployer;
    }

    NetworkConfig public activeNetworkConfig;
    address public DEPLOYER_ADDRESS = 0x5Cdc9010D01d6744Dd9213A0e28aa780210eC544;

    constructor() {
        if (block.chainid == 11155111) {
            activeNetworkConfig = getSepoliaEthConfig();
        } else if (block.chainid == 68775) {
            activeNetworkConfig = getDM2VerseTestnetConfig();
        } else {
            revert("Unsupported network");
        }
    }

    function getSepoliaEthConfig() public view returns (NetworkConfig memory) {
        return NetworkConfig({deployer: DEPLOYER_ADDRESS});
    }

    function getDM2VerseTestnetConfig() public view returns (NetworkConfig memory) {
        return NetworkConfig({deployer: DEPLOYER_ADDRESS});
    }
}
