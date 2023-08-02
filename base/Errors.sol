// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Errors {
    error NotZeroError(string errorMsg );

    function add(int x, int y) external pure returns(int){
        if(x < 0 || y < 0){
            revert NotZeroError("value cannot less than zero");
        }

        return (x + y);
    }

}