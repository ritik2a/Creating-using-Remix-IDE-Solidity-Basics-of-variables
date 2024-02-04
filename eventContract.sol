// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract Task {
    uint public age;
    address public userAddress;

    modifier userExist { 
        require(userAddress == address(0), "User already exists");
        _;
    }

    modifier userDoesNotExist { 
        require(userAddress != address(0), "User doesn't exist");
        _;
    }
    event UserCreated(address indexed userAddress, uint age);
    event UserUpdated(address indexed userAddress, uint newAge);
    event UserDeleted(address indexed userAddress);
    function createUser(uint _age) public userExist {
        age = _age;
        userAddress = msg.sender;
        emit UserCreated(msg.sender,  _age);
    }
    function updateUser(uint _newAge) public userDoesNotExist {
        age = _newAge;
        emit UserUpdated(msg.sender, _newAge);
    }
    function deleteUser() public userDoesNotExist {
        age = 0;
        userAddress = address(0);
        emit UserDeleted(msg.sender);
    }
}
