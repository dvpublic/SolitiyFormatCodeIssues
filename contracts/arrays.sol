// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Arrays {
  function f(uint a, uint[3] memory b) internal {
    b[0] = a;
  }

  function callerF() internal {
    uint b = 1;
    // multiline call
    f(
      4,
      [
        0,
        b,
        2
      ]
    );

    // single-line call
    f(4, [0, b, 2]);

    // multiline call with expressions
    bool c = false;
    f(
      4,
      [
        c ? 1 : 0,
        b,
        b == 2 ? 1 : 0
      ]
    );
  }
}