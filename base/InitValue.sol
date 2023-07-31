// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract InitValue {

    // 初始值
    bool public _bool;
    uint public _uint;
    uint128 public _uint128;
    address public _address;
    address payable public _addressPayable;
    mapping(uint => address) map;

    function f() external{}

    // delete使值变为初始值
    function deletevalue() public {
        delete _bool;
    }


    // 常量
    string constant public _constantString = "Bob";

    // immutable 修饰的可以在构造函数中初始化
    uint128 immutable _uintConstant;
    constructor() {
       _uintConstant = 128;
    }
}