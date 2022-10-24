# Miscellaneous Resources

This document contains a list of resources related to bytecode/opcode/decompiling for EVM bytecode.

## Function Selectors

### Faster Functions

Functions in Solidity are more efficient when their function selector has mostly zeros. See this Twitter thread for some brief analysis: https://twitter.com/ltsCuzzo/status/1581990052452003840. A rust tool for building function selectors with mostly leading zeros can be found here: https://github.com/jeffreyscholz/solidity-zero-finder-rust.

### 4byte.directory

The [4byte.directory](https://www.4byte.directory/) website contains a database of function selector signatures. An API is available to programmatically obtain possible function definitions. The database also contains mappings for event signatures. The source for the website can be found here: https://github.com/ethereum-lists/4bytes

### samczsun

samczsun ([@samczsun](https://twitter.com/samczsun) on Twitter) has released a function signature database at https://sig.eth.samczsun.com/. This tool will also calculate the function signature given a function definition. An API is available to programmatically obtain possible function definitions.

## Tools

### Rattle

The [rattle](https://github.com/crytic/rattle) tool developed by [Trail of Bits](https://www.trailofbits.com/) performs static analysis on EVM bytecode.

