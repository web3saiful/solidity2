// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract operator{
    uint public a=5;
    uint public b=10;

    function get()public {
        do{
            a+=1;
        }while(a<b);
    }
} 