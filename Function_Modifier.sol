// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


contract Event{

    //Event 

    // declaration - emit
    event UserRegister(address userAddress, string name,uint timestamp);
    event PointsEarns(address usser,uint points,string activity);

struct User{
    string name;
    uint points;
    bool isRegistered;
    
  }

  mapping (address=>User)public users;

  function userRegister(string memory _name)public {
    require(!users[msg.sender].isRegistered,"User already registered");
    
    users[msg.sender]=User(_name,0,true);

    //Emit the event-making the announcement
    emit UserRegister (msg.sender,_name,block.timestamp);
    }
    

    function earnPoints(uint _points, string memory _activity)public {
        require(users[msg.sender].isRegistered,"User not registered");

        users[msg.sender].points+=_points;

        emit PointsEarns(msg.sender, _points, _activity);
    }

}