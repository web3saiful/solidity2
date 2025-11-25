// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;



// This contract has some error
contract AdvancedModifier{
    mapping (address=>uint256)public balance;
    mapping (address=>bool)public authorized;

    uint256 public minAmount=1;
    
    modifier onlyAuthorized(address user){
        require(authorized[user],"User not authoried");
        _;
    }

    modifier minimumBalance(uint256 minAmount){
        require(balance[msg.sender]>=minAmount,"Insufficiant");
        _; 
    }

    modifier validAmount(uint256 amount){
        require(amount>0,"Amount must be positive");
        require(amount<=1000 ether,"Amount too large");
    _;
    }


    function transfer(address to, uint256 amount)public validAmount (amount)minimumBalance
    (minAmount)onlyAuthorized(to){
        balance[msg.sender]-=amount;
        balance[to]+=amount;
    }

}