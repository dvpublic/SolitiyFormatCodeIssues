// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Comments {
  /// @notice Comment to user defined type
  type RequestUid is uint64;

  /// @notice Comment to enum
  enum ConversionKind {
    /// @notice Comment to first enum item
    UNKNOWN_0,
    /// @notice Comment to second enum item
    SWAP_1,
    /// @notice Comment to third enum item
    BORROW_2
  }

  /// @notice Comment to constant
  uint constant public VALUE = 1; // constant

  /// @notice Comment to amount
  uint public amount;

  /// @notice Multiline comment
  ///         to the mapping
  /// @dev Dev comment
  mapping(address => uint) internal _userToBalance;

  /// @notice Comment to the array
  uint[] public array; // comment to the array 2

  /// @notice Multiline comment Multiline comment Multiline comment Multiline comment Multiline comment Multiline
  ///         to the struct
  struct DataType {
    /// @notice Comment to amount
    /// @dev Dev comment
    ///      multiline comment
    uint amount; // comment to the amount

    /// @notice Comment to the address
    address address1; // comment to the address 2

    /// @dev Balances
    mapping(address => uint) balances; // comment to balances
  }

  /// @notice This is constructor
  /// @param amount_ Comment to the amount
  constructor(uint amount_) {
    // explanation explanation
    amount = amount_; // explanation explanation
  }

  //----------------------------------------------------------------
  //region Section 1
  //----------------------------------------------------------------

  /// @notice Return sum of two numbers
  /// @param amount1 the first number
  /// @param amount2 the second number
  /// @param amount3 third number
  /// @return amount3 the sum of two numbers
  function sum(uint amount1, uint amount2, uint amount3_) internal returns (uint amount3, uint amount4) {
    uint amount12 = amount1 + amount2; // Autoformat moves comments one line down: https://github.com/intellij-solidity/intellij-solidity/issues/363

    // multiline expression: https://github.com/intellij-solidity/intellij-solidity/issues/382
    uint amount5 = amount1    // explanation
      + amount2               // description
      + amount3_; // single line comment

    (uint amount123,) = sum(
      1, // 1
      2, // 2
      3 // 3
    );

    if ( // comment to if
      // condition 1
      amount123 == 100
      // condition 2
      // condition 2.1
      && amount5 == 500
    ) { // comment
      amount123 = 200;  // comment
    }

    // some thoughts

    return ( // comment to return
      amount3, // c1
      amount4 // c2
    ); // comment to return

    // some final thoughts
  }

  //----------------------------------------------------------------
  // Following code was commented using Ctrl+/

//  function commentedCode(uint amount) {
//    sdaflkjldsfa
//    sadfsdasdaf
//  }

  //endregion Section 1
}