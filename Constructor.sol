// SPDX-License-Identifier:MIT

pragma solidity ^0.8.10;

contract Constructor {
    string public tokenName;
    uint public totalSupply;

    uint public constant supply = 1000; // constant değeri başlangıçta verilir daha sonra değiştirilemez
    uint public immutable number; // immutable değeri başlangıçta değil constructorda verilebilir daha sonra değiştirilemez fakat owner
    
    constructor (uint num){
        number = num
    }

    constructor(string memory name,uint number){

        tokenName = name;
        totalSupply = number;
    }

    function set(uint number) public {
        totalSupply = number;
    }
}
