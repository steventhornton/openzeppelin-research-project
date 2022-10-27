// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IUpsidedownEngineerFactory {
    function deploy() external returns(address);
    function hint() external;
}
