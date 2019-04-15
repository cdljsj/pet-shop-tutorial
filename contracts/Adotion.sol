pragma solidity ^0.5.5;

contract Adoption {
    address[16] public adopters;

    function adopt(uint8 petId) public returns (uint8) {
        require(petId >= 0 && petId <= 15);

        adopters[petId] = msg.sender;

        return petId;
    }

    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}