// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract mappingDemo{
    mapping (address=>uint256)public balances;
    mapping (uint256=>string)public usernames;
    mapping(string=>bool)public isValid;

    function setBalance(address user,uint256 amount)public {
        balances[user]=amount;
    }

    function getBalances(address user)public view returns(uint256){
        return balances[user];
    }
}