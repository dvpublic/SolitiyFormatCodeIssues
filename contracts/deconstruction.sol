// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Deconstruction {
  /// @return Comment to return
  function f1() internal view returns (uint) {
    // comment to result
    return 0; // comment to result 2
  }

  /// @return Comment to return a, b, c
  function f2() internal view returns (uint, uint, uint) {
    // comment to result
    return (0, 1, 2); // comment to result 2
  }

  /// @return c 1
  /// @return d 2
  /// @return e 3
  function f2(uint a_, uint b_) internal view returns (uint c, uint d, uint e) {
    // comment to result
    return ( // comment to result 2
      a_ + b_, // comment to result 3
      a_ - b_,
      a_ * b_ // comment to result 4
    );
  }

  function f3(uint a_, uint b_) internal view returns (uint c, uint d, uint e) {
    (uint f, uint g, uint e) = f2(a_, b_);

    uint v1;
    uint v2;
    uint v3;

    (v1,,) = f3(a_, b_);

    (v1
    ,,) = f3(a_, b_);

    (v1,,) = f3(
      a_, // comment
      b_
    );

    (v1,
     v2,
     v3) = f3(a_, b_);

    (v1,
     ,
     v3) = f3(a_, b_);

    return (c, d, e);
  }
}