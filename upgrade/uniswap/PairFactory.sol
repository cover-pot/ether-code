// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Pair.sol";

contract PairFactory {
    mapping(address => mapping(address => address)) public getPair;
    address[] public allPairs; // 所有的pair

    function createPair(address token0, address token1) external returns(address pairAddress) {
        Pair pair = new Pair();

        pair.initialize(token0, token1);

        pairAddress = address(pair);
        allPairs.push(pairAddress);

        getPair[token0][token1] = pairAddress;
        getPair[token1][token0] = pairAddress;

    
    }

    function createPairV2(address tokenA, address tokenB) external returns(address pairAddress) {
        require(tokenA != tokenB, 'invalid address');
        
        // token 按照大小排序
        (address token0, address token1) = tokenA > tokenB ? (tokenA, tokenB) : (tokenB, tokenA);

        // 计算salt
        bytes32 salt = keccak256(abi.encodePacked(token0, token1));

        // createv2创建合约
        Pair pair = new Pair{salt: salt}();
        pair.initialize(token0, token1);

        pairAddress = address(pair);
        allPairs.push(pairAddress);

        getPair[token0][token1] = pairAddress;
        getPair[token1][token0] = pairAddress;
    }
}