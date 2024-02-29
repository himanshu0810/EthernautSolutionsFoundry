// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AlienCodex {

  bool public contact;
  bytes32[] public codex;

  modifier contacted() {
    assert(contact);
    _;
  }
  
  function makeContact() public {
    contact = true;
  }

  function record(bytes32 _content) contacted public {
    codex.push(_content);
  }

  function retract() contacted public {
  }

  function revise(uint i, bytes32 _content) contacted public {
    codex[i] = _content;
  }
}