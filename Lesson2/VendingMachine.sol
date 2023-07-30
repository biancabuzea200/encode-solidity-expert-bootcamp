// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;
contract VendingMachine {

    address owner;
    error Unauthorized();

    function buy(uint amount) public payable{
        require(amount <= msg.value / 2 ether, "not enough funds");
    }

    //alternaltve way
    if(amount > msg.value / 2 ether)
        revert ("not enough ether provided");

    //wirhdraw()
    function withdraw() public{
        if(msg.sender != owner) 
        revert Unauthorized();

    payable (msg.sender).transfer(address(this).balance);
    }
}