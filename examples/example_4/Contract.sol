// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Contract {

    event Transfer(address indexed from, address indexed to, uint256 value);
    
    // Function signature is the same as the Transfer(...) event signature
    // function f_3E9B555D() external {
    //     emit Transfer(address(this), msg.sender, address(this).balance);
    // }

    function transfer() external {
        emit Transfer(address(this), msg.sender, address(this).balance);
    }
    
}

