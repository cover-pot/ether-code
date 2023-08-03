// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// 定义库合约
library MathLibrary {
    function add(uint x, uint y) external pure returns(uint) {
        return x + y;
    }

    function subtract(uint x, uint y) external pure returns(uint) {
        return x - y;
    }
}

contract LibraryContract {

    // 作为uint类型的成员函数 第一个参数默认传递
    using MathLibrary for uint;

    function operation(uint x, uint y) external pure returns(uint, uint) {
        uint addValue = MathLibrary.add(x, y);
        uint suntractValue = x.subtract(y);

        return (addValue, suntractValue);

    }
}