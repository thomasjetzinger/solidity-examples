pragma solidity ^0.4.0;

contract DogContract {
    struct Dog {
        string name;
        uint age;
    }
    
    Dog[] dogs;
    mapping(address => uint) ownerToDog;
    
    function addDog(string name, uint age) internal {
        address owner = msg.sender;
        uint id = dogs.push(Dog(name, age));
        ownerToDog[owner] = id;
    }
    
    function getDog() returns (string) {
        address owner = msg.sender;
        uint id = ownerToDog[owner];
        return dogs[id - 1].name;
    }
    
    function getIndex() returns (uint256) {
        return ownerToDog[msg.sender];
    }
    
}