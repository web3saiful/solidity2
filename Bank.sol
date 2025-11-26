// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

// Asser consumes all gas when it fails
contract Bank{
   uint public totalDeposits;

   function deposit(uint amount)public{
    uint oldTotal=totalDeposits;
    totalDeposits+=amount;

    // Make sure our math is correct
    assert(totalDeposits>=oldTotal);
   }


   function withdraw(uint amount)public {
    uint oldBalance=totalDeposits;
    totalDeposits-=amount;

    assert(totalDeposits<=oldBalance);
   }
}
