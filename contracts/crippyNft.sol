// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import '@openzepplin/contracts/token/ERC721/ERC721.sol';
import '@openzepplin/contracts/access/ownable .sol';

contract CrippyNft is ERC721, ownable {
    unit256 public mintPrice;
    unit256 public totalSupply;
    unit256 public maxSupply;
    unit256 public maxPerWallet;
    bool public isPublicMintEnabled;
    string internal basetokenUri;
    address  payable public withdrawWallet;
    mapping(address => unit256) public mintWallet;

    constructor() payable  ERC721('Crippy', 'CR') {
    mintPrice = 0.02 ether;
    totalSupply = 0;
    maxSupply = 1000;
    maxPerWallet = 3;
    // set withdrawWallet address
    }  

    
    functiion setIsPublicMintEnable(bool isPublicMintEnabled_) external onlyOwner{
        isPublicMintEnabled = isPublicMintEnabled_; 
    }

    
    functiion setBasetokenUri(string calldata basetokenUri_) external onlyOwner {
        basetokenUri = basetokenUri_; 
    }

    functiion tokenURI(unit256 tokenId_) public view override returns (string memory) {
require(_exists(tokenId_), 'token does not exists');
    }
}