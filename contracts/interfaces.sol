// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

interface IInterfaceExample1 {
  function uintField() external view returns (uint);
  function mappingField(uint index) external view returns (address);
  function ordinalFunction() external view returns (uint);
}

interface IInterfaceExample2 {
  function addressField() external view returns (address);
  function mappingField(uint index) external view returns (address);
}

contract HeirExample is IInterfaceExample1, IInterfaceExample2 {
  uint public override uintField;
  address public override addressField;
  mapping(uint => address) public override(IInterfaceExample1, IInterfaceExample2) mappingField;
  function ordinalFunction() external view returns (uint) {
    return 0;
  }
}