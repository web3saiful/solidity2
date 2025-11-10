// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract FunctionTypes{
    uint public score=5;


    function setScore(uint newScore)public{
        score=newScore;
    }

    function getScore()public view  returns(uint){
        return score;
    }

    function addNumbers(uint a,uint b) public pure returns (uint){
        return a + b;
    }
}