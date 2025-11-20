// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

// contract hashfunctions{
//      bytes32 public password;
    
//     function generatePass(string memory _pass)public {
//       password=keccak256(abi.encodePacked(_pass));
//     }

//     function sendMoney(string memory _pass)public view {
//         require(keccak256(abi.encodePacked(_pass))==password,"Wrong password");
//     }
// }  





contract hashfunctions{
    
    function generatePass(string memory _pass,string memory _name)public pure returns (bytes32) {
   
    return keccak256(abi.encode(_pass,_name)); 

    }
    
} 