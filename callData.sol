// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Calldata{
function processArray(uint256[] calldata _data)external pure returns(uint256){
    uint256 sum=0;

    for(uint i=0;i<_data.length;i++){
        sum+=_data[i];
    }
    return sum;
  }

}