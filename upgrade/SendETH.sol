// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SendETH {


    // send 发送失败不会revert交易 gas限制2300
    // 不会抛出异常，需要自己判断返回值
    function sendAmount(address payable _to, uint amount) external {
        bool success = _to.send(amount);
        if (!success) {
            revert("send failed");
        }
    }

    // transfer发送失败会revert交易 gas限制2300
    // 会立即抛出异常，没有返回值
    function transferAmount(address payable _to, uint amount) external {
        _to.transfer(amount);
        
    }

    // call 没有gas限制，最灵活。
    // 还可以调用普通函数 不会抛出异常。需要自己判断
    // 还可以使用abi.decode()来解码返回数据
    function callAmount(address payable _to, uint amount) external {
        (bool success,) = _to.call{value:amount}("");
        if (!success) {
            revert("call failed");
        }
        
    }
}