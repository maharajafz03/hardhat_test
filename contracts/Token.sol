// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "hardhat/console.sol";

contract Token {
    string public name = "cntrl";
    string public symbol = "y";
    uint public totalSupply = 100000;
    address owner;

    mapping(address => uint) public balance;

    event Transfer(address indexed _from, address indexed _to, uint _amount);

    constructor() {
        owner = msg.sender;
        balance[owner] = totalSupply;
        // console.log(owner);
    }

    function transfer(address _to, uint _amount) public {
        require(balance[owner] >= _amount, "Insufficient balance");
        require(_to != address(0), "Invalid address");

        balance[owner] -= _amount;
        balance[_to] += _amount;
        // console.log(balance[_to]);

        emit Transfer(owner, _to, _amount);
    }
}
