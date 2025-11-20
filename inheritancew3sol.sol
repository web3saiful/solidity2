// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

// contract a {
//     uint public num=1;
// }

// contract b is a{
//     function getVal()public view returns(uint){
//         return num;
//     }
// }








contract a {
    uint public num;

    constructor(uint _num){
        num=_num;
    }
}

contract b is a(4){
    function getVal()public view returns(uint){
        return num;
    }
}


