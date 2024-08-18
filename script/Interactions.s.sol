// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from "foundry-devops/src/DevOpsTools.sol";
import {HelperConfig} from "./HelperConfig.s.sol";
import {TestWETH} from "../src/TestWETH.sol";
import {TestSMP} from "../src/TestSMP.sol";
import {TestTetherToken} from "../src/TestTetherToken.sol";
import {TestERC721} from "../src/TestERC721.sol";

contract MintTestSMP is Script {
    function mint(address testSMPAddress, address deployer, address recipient, uint256 amount) public {
        vm.startBroadcast(deployer);
        TestSMP testSMP = TestSMP(testSMPAddress);
        testSMP.mint(recipient, amount);
        vm.stopBroadcast();
    }

    function mintUsingConfig(address testSMPAddress, address recipient) public {
        HelperConfig helperConfig = new HelperConfig();
        (address deployer) = helperConfig.activeNetworkConfig();
        mint(testSMPAddress, deployer, recipient, 100 ether);
    }

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("TestSMP", block.chainid);
        // ここでrecipientを指定
        address recipient = 0x5Cdc9010D01d6744Dd9213A0e28aa780210eC544;
        mintUsingConfig(mostRecentlyDeployed, recipient);
    }
}

contract MintTestWETH is Script {
    function mint(address testWETHAddress, address deployer, address recipient, uint256 amount) public {
        vm.startBroadcast(deployer);
        TestWETH testWETH = TestWETH(testWETHAddress);
        testWETH.mint(recipient, amount);
        vm.stopBroadcast();
    }

    function mintUsingConfig(address testWETHAddress, address recipient) public {
        HelperConfig helperConfig = new HelperConfig();
        (address deployer) = helperConfig.activeNetworkConfig();
        mint(testWETHAddress, deployer, recipient, 100 ether);
    }

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("TestWETH", block.chainid);
        // ここでrecipientを指定
        address recipient = 0x5Cdc9010D01d6744Dd9213A0e28aa780210eC544;
        mintUsingConfig(mostRecentlyDeployed, recipient);
    }
}

contract MintTestTetherToken is Script {
    function mint(address testTetherTokenAddress, address deployer, address recipient, uint256 amount) public {
        vm.startBroadcast(deployer);
        TestTetherToken testTetherToken = TestTetherToken(testTetherTokenAddress);
        testTetherToken.mint(recipient, amount);
        vm.stopBroadcast();
    }

    function mintUsingConfig(address testTetherTokenAddress, address recipient) public {
        HelperConfig helperConfig = new HelperConfig();
        (address deployer) = helperConfig.activeNetworkConfig();
        mint(testTetherTokenAddress, deployer, recipient, 100 ether);
    }

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("TestTetherToken", block.chainid);
        // ここでrecipientを指定
        address recipient = 0x5Cdc9010D01d6744Dd9213A0e28aa780210eC544;
        mintUsingConfig(mostRecentlyDeployed, recipient);
    }
}

contract MintTestERC721 is Script {
    function mint(address testERC721Address, address deployer, address recipient) public {
        vm.startBroadcast(deployer);
        TestERC721 testERC721 = TestERC721(testERC721Address);
        testERC721.safeMint(recipient);
        vm.stopBroadcast();
    }

    function mintUsingConfig(address testERC721Address, address recipient) public {
        HelperConfig helperConfig = new HelperConfig();
        (address deployer) = helperConfig.activeNetworkConfig();
        mint(testERC721Address, deployer, recipient);
    }

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("TestERC721", block.chainid);
        // ここでrecipientを指定
        address recipient = 0x5Cdc9010D01d6744Dd9213A0e28aa780210eC544;
        mintUsingConfig(mostRecentlyDeployed, recipient);
    }
}
