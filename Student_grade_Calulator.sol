// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract GradeCalculator{

    //3 ta subjectm average ber korbo,avarageMarks,>60,attendance>20 days
    
    function calculatateAverage(uint mark1,uint mark2,uint mark3)public pure returns(uint){
        return (mark1+mark2+mark3)/3;
    }
    function didPassCourse(uint average,uint attendanceDays)public pure returns (bool){
        return average>=60 && attendanceDays>=20;
    }
}