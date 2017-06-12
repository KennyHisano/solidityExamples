pragma solidity ^0.4.0;
contract SomeContract {
    uint someVar;
    
    function getMyVar() constant returns (string) {
        if(someVar > 2) {
            return "greater two";
        } else if(someVar == 2) {
            return "is exactly two";
        }
    }
    
    function setMyVar(uint myVar) {
        someVar = myVar;
    }
    
    
    function getWhile() constant returns (uint){
        uint i = 0;
        while(i < 5) {
            i++;
        }
        return i;
        
    }