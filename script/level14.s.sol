// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/level14.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract GatekeeperTwoHack is Script
{
    function run() external
    {
        vm.startBroadcast(vm.envUint('PRIVATE_KEY'));
        GateKeeperTwoAttack gatekeeperTwoAttack = new GateKeeperTwoAttack();
        vm.stopBroadcast();
    }
}