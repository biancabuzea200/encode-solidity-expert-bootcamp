//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ListExample {
    struct DataStruct{
        address userAddress;
        uint userId;
    }

    DataStruct[] public records;

    function createRecord1 (address _userAddress, uint _userId) public pure{
        DataStruct memory newRecord;
        newRecord.userAddress = _userAddress;
        newRecord.userId = _userId;
    }

    function createRecord2(address _userAddress, uint _userId) public{
        records.push(DataStruct({userAddress:_userAddress, userId:_userId}));
    }

    function getRecordcount() public view returns (uint recordCount){
        return records.length;
    }
}