#!/usr/bin/env bash

solc ../contracts/Token.sol --bin-runtime --optimize --optimize-runs=200 -o . --overwrite
