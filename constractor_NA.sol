// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


contract Constructor{
    address owner;
    string public name;
   uint public totalSupply;

constructor(string memory _name,uint256 _totalSupply){
    owner=msg.sender;
    name=_name;
    totalSupply=_totalSupply;
}
}