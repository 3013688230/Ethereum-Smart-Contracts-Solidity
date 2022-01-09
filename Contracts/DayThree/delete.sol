pragma solidity ^0.4.0;

contract DeleteExample {
    uint data;
    uint[] dataArray;

    function f() {
        uint x = data;
        delete x; // setea x to 0, no afecta a los datos
        delete data; // setea data a 0, no afecta a x que aún tiene una copia
        uint[] y = dataArray;
        delete dataArray; // esto setea dataArray.length a cero, pero como uint[] es un objecto complejo,
        // también y es afectado que es un alias al objeto de almacenamiento
        // Por otra parte: "delete y" no es válido, ya que asignaciones a variables locales
        // haciendo referencia a objetos de almacenamiento sólo pueden ser hechas de
        // objetos de almacenamiento existentes.
    }
}