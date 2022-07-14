// SPDX-License-Identifier: abc
pragma solidity ^0.8.7;

contract EncodeTest {

    function f(uint256[] memory a, uint256[1] calldata b) external returns (bytes memory) {
         return abi.encode(a, b);
    }

    function g() external  returns (bytes memory) {
        uint256[] memory myData = new uint[](3);
        myData[0] = 1;
        myData[1] = 2;
        myData[2] = 3;
        return this.f(myData, [uint(1)]);
    }
}
