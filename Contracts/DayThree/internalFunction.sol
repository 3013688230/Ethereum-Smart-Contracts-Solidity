pragma solidity ^0.4.5;

library ArrayUtils {
  // las funciones internas pueden ser usadas en funciones de librerías
  // internas porque serán parte del mismo contexto de código.
  function map(uint[] memory self, function (uint) returns (uint) f)
    internal
    returns (uint[] memory r)
  {
    r = new uint[](self.length);
    for (uint i = 0; i < self.length; i++) {
      r[i] = f(self[i]);
    }
  }
  function reduce(
    uint[] memory self,
    function (uint x, uint y) returns (uint) f
  )
    internal
    returns (uint r)
  {
    r = self[0];
    for (uint i = 1; i < self.length; i++) {
      r = f(r, self[i]);
    }
  }
  function range(uint length) internal returns (uint[] memory r) {
    r = new uint[](length);
    for (uint i = 0; i < r.length; i++) {
      r[i] = i;
    }
  }
}

contract Pyramid {
  using ArrayUtils for *;
  function pyramid(uint l) returns (uint) {
    return ArrayUtils.range(l).map(square).reduce(sum);
  }
  function square(uint x) internal returns (uint) {
    return x * x;
  }
  function sum(uint x, uint y) internal returns (uint) {
    return x + y;
  }
}