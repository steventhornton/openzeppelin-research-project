// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Contract {

    string public name;

    function set_name() external {
        name = "Hello World!";
    }

}

