// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract mappingDemo{
    //  simple Mapping
    // mapping (address=>uint256)public balances;
    // mapping (uint256=>string)public usernames;
    // mapping(string=>bool)public isValid;

    // function setBalance(address user,uint256 amount)public {
    //     balances[user]=amount;
    // }

    // function getBalances(address user)public view returns(uint256){
    //     return balances[user];
    // }











// mapping (address=>mapping(address=>uint256))public checkTokenBalanc;

// mapping (address=>mapping (uint256=>mapping (uint256=>uint256))) public checkScore;



// function settValue(uint256 gameId,uint level,uint256 score)public {
//     checkScore[msg.sender][gameId][level]=score;
// }












mapping (address=>bool)public exists;
mapping(address=>uint256)public data;


function addData(uint256 value)public {
    require(!exists[msg.sender],"Already exists");
  

    data[msg.sender]=value;
    exists[msg.sender]=true;
}
















}