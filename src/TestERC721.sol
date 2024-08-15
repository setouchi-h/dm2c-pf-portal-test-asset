// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract TestToken is ERC721 {
    uint256 private _nextTokenId;

    constructor() ERC721("TestToken", "TT") {}

    function _baseURI() internal pure override returns (string memory) {
        return "https://game.kanpani-girls.com/metadata/characters/";
    }

    function safeMint(address to) public {
        uint256 tokenId = ++_nextTokenId;
        _safeMint(to, tokenId);
    }
}
