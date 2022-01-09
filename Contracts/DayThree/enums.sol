pragma solidity ^0.4.0;

contract test {
    enum ActionChoices { GoLeft, GoRight, GoStraight, SitStill }
    ActionChoices choice;
    ActionChoices constant defaultChoice = ActionChoices.GoStraight;

    function setGoStraight() {
        choice = ActionChoices.GoStraight;
    }

    // Ya que los tipos enum no son parte del ABI, la firma de "getChoice"
    // será automáticamente cambiada a "getChoice() returns (unit8)"
    // para todo lo externo a Solidity. El tipo entero usado es apenas
    // suficientemente grande para guardar todos los valores enum, p.ej. si
    // tienes más valores, `unit16` será utilizado y así sucesivamente.
    function getChoice() returns (ActionChoices) {
        return choice;
    }

    function getDefaultChoice() returns (uint) {
        return uint(defaultChoice);
    }
}