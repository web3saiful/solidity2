// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;


contract error{
    address public owner;

    constructor(){
        owner=msg.sender;
    }
    
    function call()public{
        require(msg.sender== );
    }
}