// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReceiveETH {

    event Receive(address sender, uint value);
    receive() external payable {
        emit Receive(msg.sender, msg.value);
    }

    event Fallback(address sender, uint value, bytes data);
    fallback() external payable {
        emit Fallback(msg.sender, msg.value, msg.data);
    }
}