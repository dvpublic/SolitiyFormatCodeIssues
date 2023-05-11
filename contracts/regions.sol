// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Regions {
  //region A2
  /// @notice Comment to amount
  uint public amount;

  /// @notice Multiline comment
  ///         to the mapping
  /// @dev Dev comment
  mapping(address => uint) internal _userToBalance;
  //endregion A2

  //----------------------------------------------------------------
  // support of region with #, see comment to https://github.com/intellij-solidity/intellij-solidity/issues/364

  //#region A1
  /// @notice This is constructor
  /// @param amount_ Comment to the amount
  constructor(uint amount_) {
    //#region B1
    amount = amount_;
    //#endregion
  }
  //#endregion A1

  //----------------------------------------------------------------
  // support of embedded regions

  // region A
  // region embedded to A
  /// @notice Return sum of two numbers
  /// @param amount1 the first number
  /// @param amount2 the second number
  /// @return amount3 the sum of two numbers
  function sum(uint amount1, uint amount2) public returns (uint amount3) {

    //region 3
    return 0;
    //endregion 3
  }
  // endregion embedded to A
  // endregion A

  //----------------------------------------------------------------
  // no name

  //region
  //endregion

  //----------------------------------------------------------------
  // wrong names
  //region Name1
  //endregion Name2

}