// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Modify {
    address owner;

    constructor(){
        owner = msg.sender;
    }

    modifier checkPermission {
        require(msg.sender == owner, "only owner can call this function");
        _; // 运行函数
    }

    function getOwner() public view checkPermission returns(address){
        return owner;
    }
    
}