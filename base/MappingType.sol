// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingType {

    struct Person {
        uint age;
        string name;
    }

    mapping(string => Person) public personMap;

    constructor(){
        personMap["Bob"] = Person(18, "Bob");
    }

    function getPersonByName(string memory _name) public view returns(Person memory){
        
        return personMap[_name];
    }
}