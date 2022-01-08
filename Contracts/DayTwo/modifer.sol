pragma solidity ^0.4.11;
 
contract owned {
    function owned() public { owner = msg.sender; }
    address owner;
 
    // define un modificador de función, que se puede heredar
         // Al modificar, el cuerpo de la función se inserta en "_;"
         // Cuando no se cumplen las condiciones, se lanzará una excepción
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}
 
contract mortal is owned {
         // Usa heredado `onlyOwner` 
    function close() public onlyOwner {
        selfdestruct(owner);
    }
}
 
contract priced {
         // El modificador de función puede recibir parámetros
    modifier costs(uint price) {
        if (msg.value >= price) {
            _;
        }
    }
}
 
contract Register is priced, owned {
    mapping (address => bool) registeredAddresses;
    uint price;
 
    function Register(uint initialPrice) public { price = initialPrice; }
 
         // Necesito proporcionar pagadero para aceptar ether
    function register() public payable costs(price) {
        registeredAddresses[msg.sender] = true;
    }
 
    function changePrice(uint _price) public onlyOwner {
        price = _price;
    }
}