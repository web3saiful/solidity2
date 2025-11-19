// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract error{
    address public owner;
    uint public count;

    constructor(){
        owner=msg.sender;
    }

    function call() public {
        count++;
        if(msg.sender!=owner){
            revert("call is not owner");
        }
    }
}