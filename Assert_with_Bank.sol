// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

 contract Bank{

uint public totalDeposits;

function deposite(uint amount)public {
    uint oldTotal=totalDeposits;
    totalDeposits+=amount;

    // Make sure our math is correct
    assert(totalDeposits>=oldTotal);
}

function withdraw(uint amount)public{
    uint oldBalance=totalDeposits;
    totalDeposits-=amount;

    assert(totalDeposits<=oldBalance);
   }
 }