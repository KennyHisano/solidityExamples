pragma solidity ^0.4.0;

contract owned {
    bool myBool;
    uint myUint256;
    bytes32 myBytes32;
    string myString;
    
    
    function owned() {
        myBool = true;
        myUint256 = 0xFFFFFFFFFF;
        myBytes32 = 0xFFFFFFFFFF;
        myString = "ABC";
    }
    
    function setMyString(string mystring) {
        myString = mystring;
    }
    
    function getMyBytes32() constant returns (bytes32) {
        return myBytes32;
    }
    
    function getMyUint256() constant returns (uint256) {
        return myUint256;
    }
}