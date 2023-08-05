// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CallContract {
    event Response(bool success, bytes data);

    function callOtherFunction(address payable _address, uint256 amount) public payable {
        (bool success, bytes memory data) = _address.call{value: msg.value}(
            abi.encodeWithSignature("otherFunction(uint256)", amount)
        );
        emit Response(success, data);
    }
}