// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Unchecked {
  function log256(uint256 value) internal pure returns (uint256) {
    uint256 result = 0;
    unchecked {
      if (value >> 128 > 0) {
        value >>= 128;
        result += 16;
      }
      if (value >> 64 > 0) {
        value >>= 64;
        result += 8;
      }
      if (value >> 32 > 0) {
        value >>= 32;
        result += 4;
      }
      if (value >> 16 > 0) {
        value >>= 16;
        result += 2;
      }
      if (value >> 8 > 0) {
        result += 1;
      }
    }
    return result;
  }

  function uncheckedInc(uint i) internal pure returns (uint) {
    unchecked {
      return i + 1;
    }
  }

  function log256(uint256 value, bool roundingUp) internal pure returns (uint256) {
    unchecked {
      uint256 result = log256(value);
      return result + (roundingUp && 1 << (result << 3) < value ? 1 : 0);
    }
  }
}