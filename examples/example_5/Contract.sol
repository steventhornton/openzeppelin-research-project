// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Contract {
    // Same function selector as mint(uint256)
    function f_19A4AE45(uint256 a, uint256 b) external returns(uint256) {
        unchecked{return(a + b);}
    }
}

