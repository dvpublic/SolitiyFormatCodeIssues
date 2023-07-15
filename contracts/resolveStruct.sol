// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

interface A {
  struct S {
    uint a;
  }
}

interface B {
  struct S {
    uint b;
  }
}

struct S {
  uint s;
}

contract C is B {
  function que() view internal {
    A.S memory shouldBeA;
    S memory whichOne;
    whichOne.b = 0;
  }
}