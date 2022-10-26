#!/usr/bin/env bash

solc --bin-runtime Contract.sol 2>/dev/null | tail -n1 > Contract.bin

