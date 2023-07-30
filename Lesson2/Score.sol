//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Score {
    uint public score = 5;
    address owner;

    mapping (address => uint) public score_list;

    constructor() {
        owner = msg.sender;
    }
    

    modifier onlyOwner(){
        if (msg.sender == owner){
            _;
        }
    }

    event Score_set(uint indexed);

    function getScore() public view returns (uint){
        return score;
    }

    function setScore(uint _score) public onlyOwner {
        score = _score;
        emit Score_set(_score);
    }

    function getUserScore(address user) publis view returns (uint){
        return score_list[user];

    }
  
    
}