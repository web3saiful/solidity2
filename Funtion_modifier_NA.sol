// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

// contract Demo{
//     uint public num;
//     address public owner;


//     modifier onlyOwner(){
//         require(owner==msg.sender,"You are not allowed");
//         _;//placeholder
//     }

//     function fun1()public view onlyOwner{
     
//     }

//     function fun2()public view onlyOwner{
     
//     }    


//     function fun3()public view onlyOwner{
     
//     }



// }











contract Demo{
    address public owner;
    bool public paused=false;

    constructor(){
        owner=msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender==owner,"You are not owner");
        _;
    }

     modifier whenNotPaused(){
        require(!paused,"Contract is paused");
        _;
     }

     function changeOwner(address newOwner)public onlyOwner{
        owner=newOwner;
     }

    function emergencyPause()public onlyOwner{
        paused=true;
    }
    
    function withdraw()public onlyOwner whenNotPaused{
        payable (owner).transfer(address(this).balance);
    }

}


