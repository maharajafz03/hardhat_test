// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Demo {
    
    uint public number = 5;
    string public name = "magaraja";

    function read() public view returns(string memory){
        return  name;
    }

   

}
