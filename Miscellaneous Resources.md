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

- Mythril
- teEther
- EthIR
- Vandal
- Oyente
- Securify

### Rattle

The [rattle](https://github.com/crytic/rattle) tool developed by [Trail of Bits](https://www.trailofbits.com/) performs static analysis on EVM bytecode.

### Heimdall

https://github.com/Jon-Becker/heimdall-rs

## Disassemblers

### evmdis

- https://github.com/Arachnid/evmdis

### pyevmasm

- https://github.com/crytic/pyevmasm

## Blog Posts

- https://curiousstuff.eu/post/part-1-building-ethereum-evm-decompiler-from-scratch.-getting-opcodes/

## Publications

- Brent, L., Grech, N., Lagouvardos, S., Scholz, B., & Smaragdakis, Y. (2020, June). Ethainter: a smart contract security analyzer for composite vulnerabilities. In *Proceedings of the 41st ACM SIGPLAN Conference on Programming Language Design and Implementation* (pp. 454-469).
  - https://yanniss.github.io/ethainter-pldi20.pdf
  - https://www.nevillegrech.com/assets/pdf/ethainter-pldi.pdf

- Brent, L., Jurisevic, A., Kong, M., Liu, E., Gauthier, F., Gramoli, V., ... & Scholz, B. (2018). Vandal: A scalable security analysis framework for smart contracts. *arXiv preprint arXiv:1809.03981*.
  - https://arxiv.org/pdf/1809.03981.pdf
- Contro, F., Crosara, M., Ceccato, M., & Dalla Preda, M. (2021, May). Ethersolve: Computing an accurate control-flow graph from ethereum bytecode. In *2021 IEEE/ACM 29th International Conference on Program Comprehension (ICPC)* (pp. 127-137). IEEE.
  - https://arxiv.org/pdf/2103.09113.pdf

- Grech, N., Lagouvardos, S., Tsatiris, I., Smaragdakis, Y. (2022), Elipmoc: Advanced Decompilation of Ethereum Smart Contracts *Proceedings of the ACM in Programming Languages (OOPSLA).*

  - https://yanniss.github.io/elipmoc-oopsla22.pdf

  - https://dl.acm.org/doi/10.1145/3527321

- Grech, N., Brent, L., Scholz, B., & Smaragdakis, Y. (2019, May). Gigahorse: thorough, declarative decompilation of smart contracts. In *2019 IEEE/ACM 41st International Conference on Software Engineering (ICSE)* (pp. 1176-1186). IEEE.
  - https://yanniss.github.io/gigahorse-icse19.pdf
  - https://zenodo.org/record/2578692
