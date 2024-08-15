// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from "foundry-devops/src/DevOpsTools.sol";
import {HelperConfig} from "./HelperConfig.s.sol";
import {TestAsset} from "../src/TestERC20.sol";
import {TestToken} from "../src/TestERC721.sol";

contract MintTestERC20 is Script {
    function mint(address testERC20Address, address deployer, address recipient, uint256 amount) public {
        vm.startBroadcast(deployer);
        TestAsset testAsset = TestAsset(testERC20Address);
        testAsset.mint(recipient, amount);
        vm.stopBroadcast();
    }

    function mintUsingConfig(address testERC20Address, address recipient) public {
        HelperConfig helperConfig = new HelperConfig();
        (address deployer) = helperConfig.activeNetworkConfig();
        mint(testERC20Address, deployer, recipient, 100 ether);
    }

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("TestAsset", block.chainid);
        // ここでrecipientを指定
        address recipient = 0x15dA197b6A4907B595A704A5b9692e53a7577658;
        mintUsingConfig(mostRecentlyDeployed, recipient);
    }
}

contract MintTestERC721 is Script {
    function mint(address testERC721Address, address deployer, address recipient) public {
        vm.startBroadcast(deployer);
        TestToken testToken = TestToken(testERC721Address);
        testToken.safeMint(recipient);
        vm.stopBroadcast();
    }

    function mintUsingConfig(address testERC721Address, address recipient) public {
        HelperConfig helperConfig = new HelperConfig();
        (address deployer) = helperConfig.activeNetworkConfig();
        mint(testERC721Address, deployer, recipient);
    }

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("TestToken", block.chainid);
        // ここでrecipientを指定
        address recipient = 0x15dA197b6A4907B595A704A5b9692e53a7577658;
        mintUsingConfig(mostRecentlyDeployed, recipient);
    }
}
