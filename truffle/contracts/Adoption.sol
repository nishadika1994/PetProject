// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

contract Adoption {
  address[16] public adopters;

  event petAdopted(uint petid);

  // Adopting a pet
  function adopt(uint petId) public returns (uint){
    require(petId >= 0 && petId <=15);
    adopters[petId] = msg.sender;
    emit petAdopted(petId);
    return petId;
  }

  // Retrieving the adopters
  function getAdopters() public view returns (address[16] memory){
    return adopters;
  }
}