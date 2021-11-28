// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

contract Immutable {
    // coding convention to uppercase constant variables
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    // alues of immutable variables can be set inside the constructor 
    // but cannot be modified afterwards
    constructor(uint _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}