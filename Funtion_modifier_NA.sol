// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Demo{
    uint public num;
    address public owner;


    modifier onlyOwner(){
        require(owner==msg.sender,"You are not allowed");
        _;//placeholder
    }

    function fun1()public view onlyOwner{
     
    }

    function fun2()public view onlyOwner{
     
    }    


    function fun3()public view onlyOwner{
     
    }


    
}