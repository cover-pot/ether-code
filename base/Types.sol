// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Types {

    enum Weekday {Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday}
    
    // value type struct
    struct ValueType {
        bool _bool;

        int _int;
        uint _uint;
        uint128 _uint128;

        address addr1;
        address payable addr2;
        uint256 _balance;

        bytes16 _byte1;
        bytes1 _byte2;

        Weekday _weekDay;
        uint _weekDayValue;

    }

    // value type 
    function valueType() public view returns(ValueType memory vt){
        // 布尔类型
        bool _bool = false; 

        // 数值类型
        int _int = -1; // 包含整数和负数
        uint _uint = 3; // 正整数
        uint128 _uint128 = 1231; // 128位正整数

        // 地址类型
        address addr1 = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
        address payable addr2 = payable(addr1); // 可以转账 查余额
        uint256 _balance = addr2.balance; // addr2的余额

        // 定长字节数组
        bytes16 _bytes1 = "potcover";
        bytes1 _bytes2 = _bytes1[0];

        // 枚举类型
        Weekday sunday = Weekday.Sunday;
        uint numberDay = uint(sunday);

        // init value

        vt._bool = _bool;
        vt._int = _int;
        vt._uint = _uint;
        vt._uint128 = _uint128;
        vt.addr1 = addr1;
        vt.addr2 = addr2;
        vt._balance = _balance;
        vt._byte1 = _bytes1;
        vt._byte2 = _bytes2;
        vt._weekDay = sunday;
        vt._weekDayValue = numberDay;

    }
}