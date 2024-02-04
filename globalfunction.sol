// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract Task {

    function transactionSender() public view returns (address) {
        return msg.sender;
    }

    function sentAmount() public payable returns (uint) {
        return msg.value;
    }

    function receiveEther() public payable {}
}
