pragma solidity ^0.4.0;

contract AverageAgeOfPersons {
    struct Person {
        string name;
        uint age;
    }
    
    Person[] persons;
    
    function addPerson(string name, uint age) {
        persons.push(Person(name, age));
    }
    
    function getPerson(uint id) returns (string) {
        return persons[id].name;
    }
    
    function getAverageAge() view returns  (uint) {
        uint age = 0;
        uint numberPersons = persons.length;
        for(uint i = 0; i < numberPersons; i++) {
            age += persons[i].age;
        }
        
        return age /= numberPersons;
    }
}