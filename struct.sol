// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


contract structs{
    struct student{
        string name;
        uint age;
    }

    student[] public allstudent;
    
    function getStudent(string memory _name,uint age)public {
        student memory newstudent=student({
            name:_name,
            age:age
        });
        allstudent.push(newstudent);
    }
}