// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StoreAndScope {

    uint[] numbers = [1, 2, 3];

    function funcCalldata(uint[] calldata _number) public pure returns(uint[] calldata){
        // cannot be update
        // _number[0] = 10;
        return _number;
    }

    // 状态变量
    function assignStorage() public view returns(uint[] memory){

        uint[] memory first = numbers;

        return first;
    }

}