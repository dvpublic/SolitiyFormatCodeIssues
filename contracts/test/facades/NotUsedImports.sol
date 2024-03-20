// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "../../integration/IBVault.sol";
import "../../interfaces/IController.sol";
import "../../interfaces/IControllable.sol";
import "../../interfaces/IAppErrors.sol";
import "../../lib/SlotsLib.sol";
import "../../lib/StorySetupLib.sol";
import "../../proxy/Controllable.sol";
import "../../openzeppelin/Math.sol";
import "../../openzeppelin/SignedMath.sol";
import "../../openzeppelin/Initializable.sol";

contract NotUsedImports is IAppErrors {
  function test() external view returns (bytes32 result) {
    return SlotsLib.getBytes32(0);
  }
}