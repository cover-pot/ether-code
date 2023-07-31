// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReferenceType {
    // 固定长度
    uint[3] public myFixedArray; 
    //  可变长度
    string[] public myDynamicArray; 

    struct Person {
        uint age;
        string name;
    }

    // 初始化动态数组
    function initDynamicArr() public returns(string[] memory, uint){
        // 初始化
        myDynamicArray = new string[](3);
        myDynamicArray.push("100");

        string[] memory res = myDynamicArray;

        return (res, myDynamicArray.length);
    }

    function initStruct() public pure returns(Person memory) {
        Person memory p;
        p.age = 18;
        p.name = "Bob";

        return p;
    }
}