// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/level21.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract ShopHack is Script
{
    function run() external
    {
        vm.startBroadcast(vm.envUint('PRIVATE_KEY'));
        ShopAttack shopHack = new ShopAttack();
        shopHack.buy();
       vm.stopBroadcast();

    }
}