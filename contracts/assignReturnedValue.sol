// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract AssignedReturnedValue {
  function never() internal view returns (uint a) {
    // a is never assigned here - we need a warning?
    return a;
  }

  function sometime(uint b) internal view returns (uint a) {
    if (b != 0) {
      a = 5;
    }

    // a can be assigned inside IF - we don't need a warning
    return a;
  }

  function always(uint b) internal view returns (uint a) {
    a = 5;

    // a is always assigned, no warning
    return a;
  }
}