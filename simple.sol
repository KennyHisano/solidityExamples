pragma solidity ^0.4.0;
contract SimpleDapp {
    uint someVar;

    function setSomeVar(uint myVar) {
        someVar = myVar;
    }
    
    function getSomeVar() constant returns (uint) {
        return someVar;
    }
    
    function setSomeVarTimesFour(uint myVar) {
        setSomeVar(4 * myVar);
    }
}

contract SomeOthersSimpleDapp {
    SimpleDapp simpleDapp;
    SimpleDapp newInstanceOfSimpleDapp;
    
    function SomeOthersSimpleDapp(address whereIsMyOtherContract) {
        simpleDapp = SimpleDapp(whereIsMyOtherContract);
        newInstanceOfSimpleDapp = new SimpleDapp();
    } 
    
    function getSimpleDappSomeVar() constant returns (uint) {
        return simpleDapp.getSomeVar();
    }
    
    function getNewInstanceOfSimpleDapp() constant returns (uint) {
        return newInstanceOfSimpleDapp.getSomeVar();
    }
}