// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract InvestmetCalculator{
    function calculatROI(uint investment,uint returnAmount)public pure returns (uint){
        return (returnAmount*100)/investment;
    }
    function calculateInterest(uint principle,uint rate) public pure returns  (uint){
        return (principle*rate)/100;
    }
}