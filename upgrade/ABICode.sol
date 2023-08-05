// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ABICode {
    uint x = 10;
    address addr = 0xa131AD247055FD2e2aA8b156A11bdEc81b9eAD95;
    string name = "0xAA";
    uint[2] array = [5, 6];

    // 每个填充为32位 不够补0
    function encode() external view returns(bytes memory result) {
        result = abi.encode(x, addr, name, array);
    }

    // 和encode类似 但是不补零
    function encodePacked() external view returns(bytes memory result) {
        result = abi.encodePacked(x, addr, name, array);
    }
}