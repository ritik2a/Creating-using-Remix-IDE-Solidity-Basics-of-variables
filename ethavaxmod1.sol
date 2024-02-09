//SPDX-License-Identifier:MIT
pragma solidity 0.8.7;

contract OwnershipContract{
  address public owner;

constructo
  {
    owner=msg.sender();
  }

  function onlyOwner() public view{
    require(msg.sender == owner,"Only the owner can call this function");
  }

  function ownerHere() public view{
    if(msg.sender!=owner){
      revert("The caller is not the owner");
    }
  }

  function Owner() public view{
    assert(msg.sender == owner);
  }
}
    
    
