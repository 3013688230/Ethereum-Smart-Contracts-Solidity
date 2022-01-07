pragma solidity >= 0.8.1;

contract Iteration {

    function whileFunc() public view returns(uint) {
        uint a = 2;

        while(a < 5) {
            a++;
            return a;
        }
    }

    function doWhile() public view returns(uint) {
        uint a = 6;

        do {
            return a;
            a++;
        } while(a < 5);
    }

    /*function forFunc() public view returns(uint) {
        uint data = [1, 2, 3, 4, 5]
        for(x = 0; x != 6; x++) {

        }
    }*/

    uint [] listaLarga = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26];
    uint [] listaNumeros = [1, 4, 34, 56];

    // ver si el numero existe en la listaNumeros
    function loopListaNumeros(uint numero) public view returns(bool) {
        bool numeroExistente = false;
        for(uint i = 0; i < listaNumeros.length; i++) {
            if(listaNumeros[i] == numero) {
                numeroExistente = true;
            }
        }
        return numeroExistente;
    }

    // numeros pares en listaLarga
    function numerosPares() public view returns(uint) {
        uint count = 0;
        for(uint i = 0; 1 < listaLarga.length; i++) {
            if(listaLarga[i] % 2 == 0) {
                count++;
            }
        }
        return count++;
    }
}