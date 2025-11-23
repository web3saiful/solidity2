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
 








    //  function workWithMemory()public pure{
    //     uint256[]memory tempNumbers=new uint256[](5);

    //     tempNumbers[0]=100;
    //  }








    // calldata->Read only input data

    function processCallData(uint256[] calldata inputNumbers)external pure returns(uint256){
        return inputNumbers[0];
    }
 












// function fun1(uint256[] storage arr)internal {
//     arr[0]=999;
// }

// function fun2(uint256[] memory arr)internal  pure{
//     arr[0]=999;
// }







// example of view
uint256 storedValue = 10;
function getStoredValue() view returns (uint256) {
     return storedValue; 
     } 



    //  function add(uint256 a, uint256 b) pure returns (uint256) {
    //      return a + b;
    //       }





}