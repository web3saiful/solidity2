// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract MyContract{
    uint256 public balance;

    receive() external payable {
        balance+=msg.value;
     }




     uint256 public fallbackCount;
     
     fallback() external payable {
        fallbackCount++;
      }
}


