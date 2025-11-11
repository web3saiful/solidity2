// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


contract TodoList{
    struct Task{
        string content;
        bool completed;
    }

    Task[] public tasks;
     //Add a new task
     function addTask(string memory _content)public {
        tasks.push(Task(_content,false));
     }
        //Mark task as completed 
        function completeTask(uint taskIndex)public {
            require(taskIndex<tasks.length,"The task doesn't exist");
            tasks[taskIndex].completed=true;
        }
       //Get task details
       function getTask(uint taskIndex)public view returns (string memory content,bool comleted){
        require(taskIndex<tasks.length,"The task doesn't exist");
        Task storage task=tasks[taskIndex];  
        return (task.content,task.completed);
       } 



}