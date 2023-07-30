//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// you can define constants at the file level

uint256 constant X = 32**22+8;

contract C{
    string constant TEXT = "abc";
    bytes32 constant MY_HASH = keccak256("abc");
    uint256 immutable decimals;
    uint256 immutable maxBalance;
    address immutable owner = msg.sender;

    constructor(uint256 _decimals, address _reference) {
        decimals = _decimals;
        maxBalance = _reference.balance;
    }
}