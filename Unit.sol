// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract uints{
    modifier amount{
        require(msg.value>1 ether);
        _;
    }

    function send()public payable amount{

    }
}