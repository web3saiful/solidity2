// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


contract VisibilityExample{
    uint256 public publicVar=100;  //accessible everyWhere 
    uint256 private privateVar=200;//only within contract
    uint256 internal internalVar=300; //this contract+inherited/derived contract

    function publicFun()public view returns(uint256){
        return publicVar+privateVar;
    }
    
    function privateFun()private view returns(uint256){
        return privateVar*2;
    }

    function internalFun()internal view returns (uint256){
        return internalVar + privateFun();
    }

    function externalFun()external view returns(uint256){ // call from outer contract
        return publicVar;
    }

 
}



   contract DerivedContract is VisibilityExample{
        function demoInherit()public view returns(uint256){
            uint256 result=publicVar+internalVar+internalFun();

           return result;
        }
    }

contract Demo2{
    VisibilityExample public target;

    constructor(address _target){
        target=VisibilityExample(_target);
    }

}