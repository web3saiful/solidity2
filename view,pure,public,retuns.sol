// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Function{
uint public val=7;

    function add()public returns(uint){
        val=4;
        return val+5;
    }
}