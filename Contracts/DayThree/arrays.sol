pragma solidity ^0.4.0;

contract C {
    function f(uint len) {
        uint[] memory a = new uint[](7);
        bytes memory b = new bytes(len);
        // Aquí tenemos a.length == 7 y b.length == len
        a[6] = 8;
    }
}