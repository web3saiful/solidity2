// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract uints{
    modifier amount{
        require(block.timestamp<(1763575503 +1 hours));
        _;
    }

    function send()public payable amount{

    }
}