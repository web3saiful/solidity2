// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract BankAccount{
    mapping (address=>uint256)private balances;
    address[]internal accountHolders;
    uint256 public totalDeposits;


    event Doposte(address indexed account, uint256 amount); //3 indexed
    event Withdraw(address account,uint256 amount);




    }
}