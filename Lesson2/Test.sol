//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Test{
    function memoryTest(string memory _exampleString) 
    public pure returns (string memory){
        _exampleString = "example";
        string memory newString = _exampleString;
        return newString;
    }

    function calldataTest(string calldata _exampleString)
    external pure returns (string calldata){
        //cannot modify exampleString
        return _exampleString;
    }
}