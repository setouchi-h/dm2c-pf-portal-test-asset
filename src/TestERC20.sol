// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TestAsset is ERC20 {
    constructor() ERC20("TestAsset", "TS") {}

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
}
