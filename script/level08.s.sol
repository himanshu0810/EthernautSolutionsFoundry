// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../levels/level08.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract TokenHack is Script
{
    Vault public vaultInstance = Vault(0x7a4a2242596981B8aaf045B18933eF853811078C);
    function run() external
    {
        vm.startBroadcast(vm.envUint('PRIVATE_KEY'));
        vaultInstance.unlock(0x412076657279207374726f6e67207365637265742070617373776f7264203a29);
        vm.stopBroadcast();
    }
}