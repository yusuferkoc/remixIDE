// SPDX-License-Identifier:MIT

pragma solidity ^0.8.10;

contract Mapping{
    mapping(address => bool) public registered;
    mapping(address => int256) public favNums;

    function register(int256 _favNum) public{
        // require(registered[msg.sender],"Kullanıcı daha önce kayıt yaptı");
        require(!isRegistered(),"Kullanici daha once kayit yapti");
        registered[msg.sender] = true;
        favNums[msg.sender] = _favNum;
    }

    function isRegistered() public view returns(bool) {
        return registered[msg.sender];
    }

    function deleteRegistered() public {
        require(isRegistered(),"Kullanici kayitli degil");
        delete(registered[msg.sender]);
        delete(favNums[msg.sender]);
    }
}