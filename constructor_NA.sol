// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


contract Demo{
    address public owner;
    uint256 public creationTime;
    string public name;
    uint256 public initialSupply;

    constructor(string memory _name,uint256 _supply){
        owner=msg.sender;
        creationTime=block.timestamp;
        name=_name;
        initialSupply=_supply;
    }
}