// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "./interfaces/IAppErrors.sol";

contract StructExample {
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
    uint[] balances; // comment to balances
  }

  /// @notice member
  DataType private _dataType;

  function f(DataType storage a_) internal returns (DataType memory) {
    DataType memory b = DataType({
      amount: a_.amount,
      address1: a_.address1,
      balances: a_.balances
    });

    if (b.address1 == address(0)) revert IAppErrors.ZeroAddress();

    return DataType({
      amount: a_.amount,
      address1: a_.address1,
      balances: a_.balances
    });
  }
}