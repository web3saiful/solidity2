// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract SimpleBank{
    uint public balance=0;

    //deposite,withdraw,balance check kori

    function deposite(uint amount)public {
        balance=balance+amount;
    }

    function withdraw(uint amount)public {
        require(balance>=amount,"Not enough money");

        balance=balance-amount;
    }



    function checkBalance()public view returns(uint){
        return balance;
    }
    
}