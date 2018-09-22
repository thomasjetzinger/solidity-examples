pragma solidity ^0.4.0;

import './dog_contract.sol';

contract KennelContract is DogContract {
    
    function transferDog(address newOwner) {
        address owner = msg.sender;
        
        require(owner != newOwner);
        
        uint dogId = ownerToDog[owner];
        delete(ownerToDog[owner]);
        ownerToDog[newOwner] = dogId;
        
        assert(ownerToDog[owner] == 0);
    }
    
    function addKennelDog(string name, uint age) {
        addDog(name, age);
    }
}