// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/level11.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract TokenHack is Script
{
    function run() external
    {
        vm.startBroadcast(vm.envUint('PRIVATE_KEY'));
        ElevatorAttack elevatorAttack = new ElevatorAttack();
        console.log("calling the goTo function");
        elevatorAttack.goTo();
        vm.stopBroadcast();
    }
}