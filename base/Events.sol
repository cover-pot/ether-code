// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Event {

    mapping(address => uint256) public _balance;

    event Transfer(address indexed from, address indexed to, uint256 value);

    function _transfer(address from, address to, uint256 amount) public {
        _balance[from] -= amount;

        _balance[to] += amount;

        // 事件释放
        emit Transfer(from, to, amount);
    }

}