// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ErrorHandling{
    //require()
    //revert()
    // assert()

      //require-> security guard
       
       mapping (address=>uint)public balances;

       function transferTokens(address to, uint amount)public {
        require(amount>0, "Cannot transfer zero token ");

        require(balances[msg.sender]>=amount,"Not enough tokens");

        balances[msg.sender]-=amount;
        balances[to]+=amount;
     }

      // revert()- emergency stop button

      uint public maxTransactionLimit=100;

      function processLargeTransaction(uint amount)public {
        
        if(amount>maxTransactionLimit){
          revert("Transaction is too large");
        }
      }
}    