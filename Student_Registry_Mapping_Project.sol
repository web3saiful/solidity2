// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract StudentRegistry{
    //Mapping from student id to their score

    mapping (uint=>uint) public StudentScore;

    store a student's StudentScore

    function StudentScore(uint studentId, uint score)public {
        StudentScore[studentId]=score;

    }


    function getScor(uint studentId)
}