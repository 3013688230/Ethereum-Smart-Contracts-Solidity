pragma solidity >= 0.8.1;

contract Conditionals {

    constructor() {

    }

    uint billetera = 300;

    function validateAmount() public view returns(bool) {
        if(billetera == 300) {
            return true;
        } else {
            return false;
        }
    }
}