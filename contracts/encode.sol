// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Encode {

  function useEncodeDecode() internal {
    bytes memory response = abi.encode(1);
    abi.decode(response, (uint));

    bytes memory entryData = abi.encode(1, 1, 1);
    (, uint x, uint y) = abi.decode(entryData, (uint, uint, uint));
  }

  function keccak256Usage() internal returns (uint) {
    string memory a = "a";
    uint d = 111;
    uint b = uint(keccak256(abi.encodePacked(a, d)));
    return b;
  }
}