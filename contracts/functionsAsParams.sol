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

  function _callForAddress(bytes32 param_) internal view returns (address) {
    SlotsLib.getAddress(param_);
    // SlotsLib.getAddressPrivate(param_); // Compilation error: Member "getAddressPrivate" not found or not visible after argument-dependent lookup
    return _callForAddress(param_, SlotsLib.getAddress);
  }
}