// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "./lib/SlotsLib.sol";

contract FunctionsAsParams {
  function _callForAddress(
    bytes32 param_,
    function (bytes32) internal view returns (address) getAddress_
  ) internal view returns (address) {
    return getAddress_(param_);
  }

  function _callForAddressExternal(
    bytes32 param_,
    function (bytes32) external view returns (address) getAddress_
  ) internal view returns (address) {
    return getAddress_(param_);
  }

  function _testCallForAddress(bytes32 param_) internal view returns (address) {
    SlotsLib.getAddress(param_);
    // SlotsLib.getAddressPrivate(param_); // Compilation error: Member "getAddressPrivate" not found or not visible after argument-dependent lookup
    // _callForAddress(param_, SlotsLib.getAddressExternal); // TypeError: Invalid type for argument in function call. Invalid implicit conversion from function (bytes32) view returns (address) to function (bytes32) view returns (address) requested. Special functions can not be converted to function types.

    return _callForAddress(param_, SlotsLib.getAddress);
  }

  // function _testCallForAddressExternal(bytes32 param_) internal view returns (address) {
    // _callForAddressExternal(param_, SlotsLib.getAddress); // TypeError: Invalid type for argument in function call. Invalid implicit conversion from function (bytes32) view returns (address) to function (bytes32) view external returns (address) requested. Special functions can not be conv erted to function types.
    // return _callForAddressExternal(param_, SlotsLib.getAddressExternal); // TypeError: Invalid type for argument in function call. Invalid implicit conversion from function (bytes32) view returns (address) to function (bytes32) view external returns (address) requested
  // }

  function _getBuild() internal view returns (uint) {
    return SlotsLib.SLOT_LIB_VERSION_INTERNAL;
  }
}