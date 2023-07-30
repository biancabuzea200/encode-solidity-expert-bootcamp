//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Owned{
    constructor(){owner = msg.sender;}
    address owner;

}

contract Child is Owned{
    function doThings() virtual public{
        
    }
}