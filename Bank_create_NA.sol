// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract BankAccount{
    mapping (address=>uint256)private balances;
    address[]internal accountHolders;
    uint256 public totalDeposits;


    event Deposit(address indexed account, uint256 amount); //3 indexed
    event Withdraw(address account,uint256 amount);


function deposit()external payable {
    require(msg.value>0,'Must deposit something');

    if(balances[msg.sender]==0){
        accountHolders.push(msg.sender);
    }

    balances[msg.sender]+=msg.value;
    totalDeposits+=msg.value;

    emit Deposit(msg.sender,msg.value);
  }


}
