// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/level13.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract GatekeeperOneHack is Script
{
    function run() external
    {
        vm.startBroadcast(vm.envUint('PRIVATE_KEY'));
        GateKeeperOneAttack gatekeeperOneAttack = new GateKeeperOneAttack();
        gatekeeperOneAttack.exploit();
        vm.stopBroadcast();
    }
}