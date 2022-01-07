pragma solidity >= 0.8.1;

contract Visivility {

    function x() private view returns(uint) {
        uint data = 9;
        //uint data;
    }

    function y() public view returns(uint) {
        return x();
    }
}