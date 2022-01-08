pragma solidity ^0.4.11;

contract Mutex {
    bool locked;
    modifier noReentrancy() {
        require(!locked);
        locked = true;
        _;
        locked = false;
    }
 
         // Prevenir llamadas recursivas
         // Después de devolver 7, bloqueado = falso todavía se ejecutará
    function f() public noReentrancy returns (uint) {
        require(msg.sender.call());
        return 7;
    }
}