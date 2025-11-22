// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract DataLocation{
    // uint256[] public numbers;

    // function modifyStorage()public{
    //     numbers.push(42); //43,000 uint gas
    //     numbers[0]=100;//5000 gas

    //     uint256[] storage storageRef=numbers;
    //     storageRef[0]=200;
    // }
 
 
     function workWithMemory()public pure{
        uint256[]memory tempNumbers=new uint256[](5);

        tempNumbers[0]=100;
     }

}