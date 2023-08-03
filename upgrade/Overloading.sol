// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Overloading {
    function process(uint data) public pure returns(uint) {
        return data * 2;
    }

    function process(string memory data) public pure returns(string memory res){
        res = data;
    }
}