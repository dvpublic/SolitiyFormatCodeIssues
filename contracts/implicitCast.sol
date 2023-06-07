// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

/// @dev See rules https://docs.soliditylang.org/en/v0.8.20/types.html#index-34
contract implicitCast {
  function acceptBytes2(bytes2 /*a*/ ) internal {

  }
  function acceptBytes3(bytes3 /*a*/ ) internal {

  }
  function acceptBytes4(bytes4 /*a*/ ) internal {

  }
  function acceptBytes8(bytes8 /*a*/ ) internal {

  }
  function acceptBytes16(bytes16 /*a*/ ) internal {

  }
  function acceptBytes20(bytes20 /*a*/ ) internal {

  }
  function acceptBytes24(bytes24 /*a*/ ) internal {

  }
  function acceptBytes32(bytes32 /*a*/ ) internal {

  }


  function callerAllowed() external {
    acceptBytes2(0);
    acceptBytes3(0);
    acceptBytes4(0);
    acceptBytes8(0);
    acceptBytes16(0);
    acceptBytes20(0);
    acceptBytes24(0);
    acceptBytes32(0);

    acceptBytes2(0x1234);
    acceptBytes2(0x0012);
    acceptBytes2(hex"1234");
    acceptBytes2("xy");
    acceptBytes2(hex"1234");

    acceptBytes3(0x123456);
    acceptBytes3(0x000001);
    acceptBytes3("xyz");
    acceptBytes3(hex"123456");

    acceptBytes4(0x12345678);
    acceptBytes4(0x00000001);
    acceptBytes4("abcd");
    acceptBytes4(hex"12345678");

    acceptBytes8(0x1234567890123456);
    acceptBytes8(0x0000000000000001);
    acceptBytes8("abcdefgh");
    acceptBytes8(hex"1234567812345678");

    acceptBytes16(0x12345678901234561122334455667788);
    acceptBytes16(0x00000000000000000000000000000001);
    acceptBytes16(hex"12345678123456781234567812345678");
    acceptBytes16("abcdefghabcdefgh");

    acceptBytes20(bytes20(0xbDBd4347b082D9d6BdF2Da4555a37Ce52a2e2120));
    acceptBytes20(bytes20(0xbDBd4347b082D9d6BdF2Da4555a37Ce52a2e2120));
    acceptBytes20(hex"1234567812345678123456781234567811223344");
    acceptBytes20("abcdefghabcdefghabcd");

    acceptBytes24(0x123456789012345611223344556677880011223300112233);
    acceptBytes24(0x000000000000000000000000000000000000000000000001);
    acceptBytes24(hex"123456781234567812345678123456781122334411223344");
    acceptBytes24("abcdefghabcdefghabcdabcd");

    acceptBytes32(0x1234567890123456112233445566778800112233001122330011223344556677);
    acceptBytes32(0x0000000000000000000000000000000000000000000000000000000000000001);
    acceptBytes32(hex"1234567812345678123456781234567811223344112233445566778899001122");
    acceptBytes32("abcdefghabcdefghabcdabcdabcdabcd");
  }

  function callerNotAllowed() external {
// not allowed according to https://docs.soliditylang.org/en/v0.8.20/types.html#index-34
// but solidity compiles following code successfully

    acceptBytes2(hex"12"); // not allowed (?) but compiled
    acceptBytes2("x"); // not allowed (?) but compiled
    acceptBytes3("x"); // not allowed (?) but compiled
    acceptBytes3("xy"); // not allowed (?) but compiled
    acceptBytes4("xy"); // not allowed (?) but compiled
    acceptBytes20("xy"); // not allowed (?) but compiled


// not allowed, solidity reports error
// Uncomment code below to check highlighting

//    acceptBytes2(54321); // not allowed
//    acceptBytes2(0x12); // not allowed
//    acceptBytes2(0x123); // not allowed
//    acceptBytes2(hex"123"); // not allowed
//    acceptBytes2("xyz"); // not allowed
//    acceptBytes3("xyzy"); // not allowed
//    acceptBytes8("abcdabcdA"); // not allowed
//    acceptBytes8(hex"12345678123456780");
//    acceptBytes8(hex"1234567");
//    acceptBytes20(0xbDBd4347b082D9d6BdF2Da4555a37Ce52a2e2120); // not allowed
//    acceptBytes20(0xbDBd4347b082D9d6BdF2Da4555a37Ce52a2e2120); // not allowed
  }
}