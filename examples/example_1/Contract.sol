// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Contract {

    function f1() external returns(uint256) {
        return sqrt(1000000);
    }

    function f2() external returns(uint256) {
        return sqrt(2000000);
    }

    function f3() external returns(uint256) {
        return sqrt(3000000);
    }

    function f4() external returns(uint256) {
        return sqrt(4000000);
    }

    function f5() external returns(uint256) {
        return sqrt(5000000);
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

