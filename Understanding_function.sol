// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Function{
    uint public counter=0;

    function incrementFun()public {
        counter=counter+1;
    }
}