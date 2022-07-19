// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract LW3Punks is ERC721Enumerable, Ownable{
    using Strings for uint256;
    
    string _baseTokenURI;
    uint256 public _price = 0.001 ether;
    bool public _paused;
    uint256 public maxTokenIds = 5;
    uint256 public tokenIds;

    modifier OnlyWhenNotPaused {
        require(!_paused, "Currently Paused");
        _;
    }
    constructor (string memory baseURI) ERC721("LW3Punks", "LW3P") {
            _baseTokenURI = baseURI;
    }
    
}