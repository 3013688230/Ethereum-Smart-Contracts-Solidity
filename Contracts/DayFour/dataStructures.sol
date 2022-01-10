pragma solidity ^0.8.3;

contract Data {
    uint total = 0;
    uint totalWhile = 0;

    function runLoop() public returns (uint) {
        for(uint iteration = 0; iteration <= 5; iteration++) {
            total += 2;
        }
        return total;
    }

    function loopWhile() public returns (uint) {
        uint iteration = 0;
        while(iteration <= 5) {
            total += 2;
            iteration++;
        }
        return totalWhile;
    }

    function runCondition(uint age) public view returns(string memory) {
        if (age <= 4) {
            return "baby";
        }
        else if (age > 4 && age <= 12) {
            return "children";
        }
        else if (age > 12 && age <= 18) {
            return "teen";
        }
        else {
            return "adult";
        }
    }
}