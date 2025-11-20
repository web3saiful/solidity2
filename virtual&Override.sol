// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract base{
    function val()public pure virtual returns(uint){
        return 6;
    }
}
    contract main is base{
      function val() public pure override returns(uint){
        return 8;
      }
    }


