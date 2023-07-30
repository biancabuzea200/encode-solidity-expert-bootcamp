// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;


error NotEnoughFunds(uint requested, uint available);

contract Token{
    mapping(address => uint) balances;
    function transfer(address to, uint amount) public{
        uint balance = balances[msg.sender];
        if(balance < amount)
            revert NotEnoughFunds(amount, balance);
        balances[msg.sender]-= amount;
        balances[to] += amount;


        

    }
}