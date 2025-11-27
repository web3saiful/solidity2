// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract StructExample{
    struct Person{
        string name;
        uint age;
        address walletAddress;
        bool isActive;
    }
    //string public name
    Person public person1;
    Person public person2;
    function setPerson(string memory _name,uint _age,address _walletAddress)public{
        person1=Person(_name,_age,_walletAddress,true);
    }

    function getPerson()public view returns(string memory,uint,address,bool){
        return (person1.name,person1.age,person1.walletAddress,person1.isActive);
    }
}