// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;



interface base{
    function get() external pure returns(uint);
}

contract main is base{
    function get() public pure override returns (uint){
        return 2;
    }
}