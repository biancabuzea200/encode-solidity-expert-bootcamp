You can concatenate  avariable number of bytes or bytes1, ...bytes32 using bytes.concat => function returns a single bytes memory array

string is equal to bytes, but does not allow length or index access

## comparing 2 strings by their keccak256 hash:
keccak256(abi.encodePacked(s1))==keccak256(abi.encodePacked(s2))

## concatenate 2 strings 
string.concat(s1,s2)

## Enums:

enum ActionChoices{GoLeft, GoRight, GoStraight, SitStill}

ActionChoices choice;
ActionChoices constant defaultchoice = ActionChoices.Gostraight;

## Memory
-only accessible within a function

## Calldata

- external values from outside a function into a function are stored
- non-modifiable, non-persistent
- calldata keyword used

Memory vars can be changes, calldata vars cannot be changed

## Constant vs Immutable vars

- constant: value has to be fixed at compile time
- immutable: can be assigned at construction time
eg:
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

## Interfaces
interface DataFeed{
    function getData(address token) external returns (uint value);
}

## fallback and receive

receive() external payable {}

fallback() external [payable]

# Require/ Assert / Revert / Try Catch

## Require 
require(_amount >0, "amount must be >0");
- creates an error of type Error(string)

## Assert 
- c reates an error of type Panic(uint256)
- assert (a>b);

## Revert
-acts like throw in other languages

# Can define your own error

eg: error NotenoughFunds(uint requested, uint available);

## using
uint256 big = _a.max(_b);

# Deleating data

1. delete myVar or myVar = 0
2. arrays: delete myArr (sets length to 0 for dynamic arrays, or each item to 0 for a static array)
3. structs: delete myStructInstance, unless it contains a mapping
4.  mappings within structs: you need to delete individual key pairs
eg: delete (myMapping[key])

