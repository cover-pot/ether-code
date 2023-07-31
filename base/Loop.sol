// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Loop {

    function sort(uint[] memory arr) public pure returns(uint[] memory){

        for(uint i = 0; i < arr.length - 1; i++){
            for(uint j = i + 1; j < arr.length; j++){
                if(arr[i] > arr[j]){
                    uint temp = arr[i];
                    arr[i] = arr[j];
                    arr[j] = temp;
                }
            }
        }

        return arr;
    }
}