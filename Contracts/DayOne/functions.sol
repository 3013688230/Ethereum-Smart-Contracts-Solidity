pragma solidity >= 0.8.1;

contract Functions {

    constructor() public {
        
    }

    function sumaValores() public view returns(uint) {
        uint a = 3;
        uint b = 5;
        uint resultado = a + b;
        return resultado;
    }
}