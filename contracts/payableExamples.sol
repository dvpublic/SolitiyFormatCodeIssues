// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

interface A {
  function mint() external payable;
}

contract B is A {
  function mint() external payable { }
  receive() external payable { }
}
contract C is A {
  function mint() external payable { }
}
contract PayableExamples {
  function useAB(address addressB, B b, A a) external {
    // case 1: cast not-payable => A
    A(addressB).mint();

    // case 2: cast not-payable => B
    // B(addressB).mint(); // Explicit type conversion not allowed from non-payable "address" to "contract B", which has a payable fallback function.

    // case 3: cast B => A
    A(b).mint();

    // case 4: cast payable => B
    B(payable(b)).mint();

    // case 5: cast payable => A
    A(payable(b)).mint();

    // case 6: cast address => payable => A
    A(payable(addressB)).mint();
  }

  function useAC(address addressC, C c, A a) external {
    // case 1: cast not-payable => A
    A(addressC).mint();

    // case 2: cast not-payable => B
    // B(addressB).mint(); // not compiled

    // case 3: cast B => A
    A(c).mint();

    // case 4: cast payable => B, not compiled
    // C(payable(c)).mint(); // Explicit type conversion not allowed from "contract C" to "address payable".

    // case 5: cast payable => A
    // A(payable(c)).mint(); //  Explicit type conversion not allowed from "contract C" to "address payable".

    // case 6: cast address => payable => A
    A(payable(addressC)).mint();
  }
}