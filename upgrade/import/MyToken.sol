// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Token.sol";

contract MyToken {
    Token public token = new Token();
    function getName() public view returns(uint8 decimal, string memory name) {
        
        name = token.name();
        decimal = token.decimals();
    }
}