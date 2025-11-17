// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract operator{
    uint public a;
    uint public b=6;

    function get()public {
        for(a=0;a<5;a++){
            b+=1;
        }
    }
}