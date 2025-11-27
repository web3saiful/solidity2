// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract memoryVsStorage{
    //Memory vs Storage
    struct Person{//******************************************************<
        string name; 
        uint256 age;
    }
    //Storage e person structure array
    Person[] public people;
    function addPerson(string memory _name,uint256 _age)public {
        Person memory newPerson=Person(_name,_age);//creating in memory
        people.push(newPerson);//storage in storage
    }
    function modifyPerson(uint256 _index,string memory _name)public {
        Person storage personToChange=people[_index];//directly referencing from storage >********************************
        personToChange.name=_name;// directly changing to storage
    }

}