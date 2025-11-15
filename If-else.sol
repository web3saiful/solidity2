// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract operator{
    uint public a=5;
    uint public b=4;


    function get() public view returns (uint){
        if(a==5 && b==4){
            return 1;
        }else if(a==5){
            return 3;
        }else if(a==2){
            return 4;
        }else {
            return 2;
        }
    }
}