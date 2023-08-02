// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract ParentContract{
    function foo() public virtual returns(uint256){
        return 1;
    }
}