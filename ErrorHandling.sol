//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ErrorHandling {
    uint256 a;

    function requireS(uint256 _x) public pure {
        require(_x > 25, "Input must be greater than 25");
    }

    function assertS() public view {
        assert(a == 0); //It takes only one parameter
    }

    function revertS(uint256 _x) public pure {
        if (_x < 30) {
            revert("Input Must be greater than 30");
        }
    }
}
