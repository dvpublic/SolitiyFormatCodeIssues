// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "./integration/IBVault.sol";

contract Expressions {
  function f1() internal view returns (bool canExecOut) {
    uint outPoolAdapters = 1;
    uint newNextIndexToCheck0 = 2;
    uint startIndex = 3;

    // it's necessary to run writable fixHealth() ...
    canExecOut =
    // ... if there is unhealthy pool adapter
      outPoolAdapters != 0

      // ... if we cannot check all adapters in one pass; we've checked a one portion, now we need to check the other portions
      || newNextIndexToCheck0 != startIndex

      // ... if it's the time to recalculate blocksPerDay value
      || (outPoolAdapters != 0 && outPoolAdapters != 5);
  }

  function f2(uint, uint, uint) internal {

  }

  function f2(uint, uint, IBVault.ExitPoolRequest memory) internal {}

  function f3(uint value, uint amount) internal {
    f2(
      0,
      1,
      IBVault.ExitPoolRequest({
        assets: new IAsset[](0),
        minAmountsOut: new uint[](1),
        userData: abi.encode(
          value,
          amount
        ),
        toInternalBalance: false
      })
    );
  }
}