// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract a {
    uint public num=1;
}

contract b is a{
    function getVal()public view returns(uint){
        return num;
    }
}