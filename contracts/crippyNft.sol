// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import '@openzepplin/contracts/token/ERC721/ERC721.sol';
import '@openzepplin/contracts/access/ownable .sol';

contract crippyNft is ERC721, ownable {
    unit256 public mintPrice;
    unit256 public totalSupply;
    unit256 public maxSupply;
    unit256 public maxPerWallet;
    bool public isPublicMintEnabled;
    string internal basetokenUri;
    address  payable public withdrawWallet;
    mapping(address => unit256) public mintWallet;
}