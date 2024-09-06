// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from "foundry-devops/src/DevOpsTools.sol";
import {HelperConfig} from "./HelperConfig.s.sol";
import {TestWETH} from "../src/TestWETH.sol";
import {TestSMP} from "../src/TestSMP.sol";
import {TestTetherToken} from "../src/TestTetherToken.sol";
import {CryptoNinjaPartners} from "../src/CryptoNinjaPartners.sol";
import {LiveLikeACat} from "../src/LiveLikeACat.sol";

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
        mint(testSMPAddress, deployer, recipient, 1_000_000_000 ether);
    }

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("TestSMP", block.chainid);
        // ここでrecipientを指定
        address recipient = 0xbb849Ab7F144D82323b46F5266b295CdB9BF4959;

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
        mint(testWETHAddress, deployer, recipient, 1000 ether);
    }

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("TestWETH", block.chainid);
        // ここでrecipientを指定
        address recipient = 0xbb849Ab7F144D82323b46F5266b295CdB9BF4959;

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
        mint(testTetherTokenAddress, deployer, recipient, 10000000000);
    }

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("TestTetherToken", block.chainid);
        // ここでrecipientを指定
        address recipient = 0xbb849Ab7F144D82323b46F5266b295CdB9BF4959;

        mintUsingConfig(mostRecentlyDeployed, recipient);
    }
}

contract MintCryptoNinjaPartners is Script {
    function mint(address testERC721Address, address deployer, address recipient) public {
        vm.startBroadcast(deployer);
        CryptoNinjaPartners cryptoNinjaPartners = CryptoNinjaPartners(testERC721Address);
        cryptoNinjaPartners.safeMint(recipient);
        vm.stopBroadcast();
    }

    function mintUsingConfig(address testERC721Address, address recipient) public {
        HelperConfig helperConfig = new HelperConfig();
        (address deployer) = helperConfig.activeNetworkConfig();
        mint(testERC721Address, deployer, recipient);
    }

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("CryptoNinjaPartners", block.chainid);
        // ここでrecipientを指定
        address recipient = 0x04cD5d7eB3Fa481F7a5d0ecFc1C26bC98f8ba37e;
        mintUsingConfig(mostRecentlyDeployed, recipient);
    }
}

contract MintLiveLikeACat is Script {
    function mint(address testERC721Address, address deployer, address recipient) public {
        vm.startBroadcast(deployer);
        LiveLikeACat liveLikeACat = LiveLikeACat(testERC721Address);
        liveLikeACat.safeMint(recipient);
        vm.stopBroadcast();
    }

    function mintUsingConfig(address testERC721Address, address recipient) public {
        HelperConfig helperConfig = new HelperConfig();
        (address deployer) = helperConfig.activeNetworkConfig();
        mint(testERC721Address, deployer, recipient);
    }

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("LiveLikeACat", block.chainid);
        // ここでrecipientを指定
        address recipient = 0x04cD5d7eB3Fa481F7a5d0ecFc1C26bC98f8ba37e;
        mintUsingConfig(mostRecentlyDeployed, recipient);
    }
}
