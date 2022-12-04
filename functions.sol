// SPDX-License-Identifier:Unlicensed

pragma solidity ^0.8.0;

contract Functions {

    uint public luckyNumber=13;

    function showNumber() public view returns(uint) {
        return luckyNumber;
    }

    function setNumber(uint newNumber) public {
        luckyNumber = newNumber;
    }

    function nothing() public pure returns(uint x,bool y,bool z) {

        x=6;
        y=false;
        z=true;
    }
}

contract Functions2 {
    uint x = 3;

    function setX(uint y) public view returns(uint) {
        return x + y;
    }
    function add(uint a, uint b) public view returns(uint){
        return a + b + block.timestamp;
    }
    function add2(uint a, uint b) public pure returns(uint) {
        return a+b;
    }
}

contract Functions3 {
    
    // Public, External, Internal, Private
    // Public : hem dışarıdan kullanıcılar hem de kontrat çağırabilir.

    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    } 
    function add2(uint a, uint b) public pure returns (uint) {
        return add(a,b);
    }

    function publicKeyword() public pure returns(string memory) {
        return "bu bir public fonksiyondur";
    }
    function callPublicKeyword() public pure  returns (string memory) {
        return publicKeyword();
    }


    // Private: Bu fonksiyona sadece bu kontrat ulaşabilir

    function privateKeyword() private pure returns (string memory) {
        return "bu bir private fonksiyondur";
    }
    function callPrivateKeyword() public pure  returns (string memory) {
        return privateKeyword();
    }

    // Internal:sadece miras alan kontratlar bu fonksiyonu çağırablir.

    function internalKeyword() private pure returns (string memory) {
        return "bu bir Internal fonksiyondur";
    } 
    function callInternalKeyword() public pure  returns (string memory) {
        return internalKeyword();
    }

    // External:dışarıdan kullanıcılar çağırabilir ama kontrat içinden çağrılmaz

    function externalKeyword() private pure returns (string memory) {
        return "bu bir External fonksiyondur";
    } 
    function callExternalKeyword() public pure  returns (string memory) {
        return externalKeyword();
    }
}