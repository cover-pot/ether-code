// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ParentContract.sol";

contract ChildContract is ParentContract{
    function foo() public virtual override returns(uint256){
        return 2;
    }
}