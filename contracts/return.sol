// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Return {
  function f1_single_expression() internal view returns (uint) {
    uint a = 1;
    uint b = 2;
    return a
      + b;
  }

  function f2_single_expression() internal view returns (uint) {
    uint a = 1;
    uint b = 2;
    return
      a
      + b;
  }

  function f2_with_comments() internal view returns (uint) {
    uint a = 1;
    uint b = 2;
    return // comment
    // comment
      a // comment
      + b; // comment
  }

  function f4_multy_return() internal view returns (uint, uint) {
    uint a = 1;
    uint b = 2;
    return (
      a + b,
      a - b
    );
  }
}