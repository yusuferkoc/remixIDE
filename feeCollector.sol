pragma solidity ^0.8.7;
// SPDX-License-Identifier: MIT

contract FeeCollector { // 0x8FA741A325c7eDa38e6A3DA45894801e1F357e90
    address public owner;
    uint256 public balance;

    constructor() {
        owner = msg.sender; // public address
    }

    receive() payable external{
        balance += msg.value;
    }

    function withdraw(uint amount, address payable destAddr) public{
    require(msg.sender == owner,"Only owner can withdraw");
    require(amount <= balance,"Insufficient funds");

    destAddr.transfer(amount);
    balance -= amount;
    }
}

