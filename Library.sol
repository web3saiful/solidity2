// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


library fun{
    function add() public pure returns(uint){
        return 5+4;
    }

        function subtract() public pure returns(uint){
        return 5-4;
    }
}


    contract main{
        function call()public pure returns(uint){
            return fun.add();
        }
    }
