# Decompilers

This document contains details and a comparison of existing EVM bytecode decompilers.

- [Dedaub](https://library.dedaub.com/decompile)
- [Ethervm](https://ethervm.io/decompile)
- [Panoramix](https://github.com/palkeo/panoramix )
- [Porosity](https://github.com/msuiche/porosity)
- [JEB](https://www.pnfsoftware.com/jeb/evm)
- [Vandal](https://github.com/usyd-blockchain/vandal)
- [Yasold](https://github.com/ajlopez/Yasold)

> **TL;DR: Use Elipmoc/Gigahorse and Panoramix**

## Details

### Elipmoc/Gigahorse (Dedaub)

#### Source

- https://github.com/nevillegrech/gigahorse-toolchain
- https://library.dedaub.com/decompile

#### Research Articles

- https://yanniss.github.io/elipmoc-oopsla22.pdf
- https://yanniss.github.io/gigahorse-icse19.pdf

#### Features

- Identifies both public and private functions
- Maps public function signatures to function names
  - This includes the inferred arguments from the bytecode
- Public function argument inference including number of arguments and types
- Can't run locally

- Can generate the 3 address code locally but not fully decompiled Solidity code
- May be good enough for integrating other apps

### Ethervm

- TODO



### JEB

- TODO

### Panoramix

#### Source

- https://github.com/palkeo/panoramix

#### Research Articles

- 

#### Features

- Used by Etherscan
- Outputs Python-like code
- Symbolic execution
- Max depth, may miss parts of code
- Fork of original eveem decompiler (no longer maintained)
- Seems to no longer be actively developed

### Porosity

#### Source

- https://github.com/msuiche/porosity

#### Research Articles

- https://github.com/msuiche/porosity/blob/master/defcon2017/dc25-msuiche-Porosity-Decompiling-Ethereum-Smart-Contracts-wp.pdf

#### Features

- Unmaintained

### Vandal

#### Source

- https://github.com/usyd-blockchain/vandal

https://arxiv.org/abs/1809.03981

### Yasold

- TODO

## Comparison

| Decompiler                                        | Last Commit  | Open Source | Function Selector Mapping | Argument Inference | Private Functions |
| ------------------------------------------------- | ------------ | ----------- | ------------------------- | ------------------ | ----------------- |
| [Dedaub](https://library.dedaub.com/decompile)    |              | Partially   | Yes                       | Yes                | Yes               |
| [Ethervm](https://ethervm.io/decompile)           |              |             |                           |                    |                   |
| [JEB](https://www.pnfsoftware.com/jeb/evm)        |              |             |                           |                    |                   |
| [Porosity](https://github.com/msuiche/porosity)   | Jan. 9, 2019 |             |                           |                    |                   |
| [Panoramix](https://github.com/palkeo/panoramix ) |              |             |                           |                    |                   |
| [Yasold](https://github.com/ajlopez/Yasold)       |              |             |                           |                    |                   |

- Decompilation type
- Output comparison
