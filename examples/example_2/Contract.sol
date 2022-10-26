// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// solc --bin-runtime contracts/Test9.sol
contract Example1 {

    uint256 private a1 = 1000000;
    uint256 private a2 = 1000000;
    uint256 private a3 = 1000000;
    uint256 private a4 = 1000000;
    uint256 private a5 = 1000000;

    function f1() external returns(uint256) {
        return sqrt(a1);
    }

    function f2() external returns(uint256) {
        return sqrt(a2);
    }

    function f3() external returns(uint256) {
        return sqrt(a3);
    }

    function f4() external returns(uint256) {
        return sqrt(a4);
    }

    function f5() external returns(uint256) {
        return sqrt(a4);
    }

    function sqrt(uint y) private pure returns (uint z) {
        if (y > 3) {
            z = y;
            uint x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }
}

