
interface A {
  function mint() external payable;
}

contract B is A {
  function mint() external payable { }
  receive() external payable { }
}

contract PayableExamples {
  function useAB(address addressB, B b) external {

    // case 1: cast not-payable => A
    A(addressB).mint();

    // case 2: cast not-payable => B
    // B(addressB).mint(); // not compiled

    // case 3: cast B => A
    A(b).mint();

    // case 4: cast payable => B
    B(payable(b)).mint();
  }
}