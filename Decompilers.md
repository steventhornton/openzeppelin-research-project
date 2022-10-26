# Decompilers

This document contains details and a comparison of existing EVM bytecode decompilers.

- [Elipmoc/Gigahorse (Dedaub)](https://library.dedaub.com/decompile)
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

#### Source

- https://ethervm.io/decompile

#### Features

- Defines variables that are never used
- Looks up variable names from [4byte](https://www.4byte.directory/)
- Output is typically very long

### JEB

#### Source

- https://www.pnfsoftware.com/jeb/evm

#### Features

- Closed source
- Demo version available for free, pro version available for $1,800/user/year.
- Interface discovery (e.g. ERC20, ERC721, etc.)
- https://www.pnfsoftware.com/blog/ethereum-smart-contract-decompiler/

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
- Doesn't distinguish between function signatures and event signatures

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

#### Source

- https://github.com/msuiche/porosity

#### Features

- Unmaintained

## Comparison

| Decompiler                                        | Last Commit   | Open Source | Function Selector Mapping | Argument Inference | Private Functions | Event Detection | Can Decompile Compound v2 Comptroller Contract |
| ------------------------------------------------- | ------------- | ----------- | ------------------------- | ------------------ | ----------------- | --------------- | ---------------------------------------------- |
| [Dedaub](https://library.dedaub.com/decompile)    | Oct. 25, 2022 | Partially   | Yes                       | Yes                | Yes               | Yes             | No                                             |
| [Ethervm](https://ethervm.io/decompile)           | Dec. 8, 2021  | No          | Yes                       | No                 | Yes               | `LOG` only      | Timeout                                        |
| [JEB](https://www.pnfsoftware.com/jeb/evm)        | Mar. 8, 2022  | No          | Yes                       | No                 |                   | Yes             |                                                |
| [Porosity](https://github.com/msuiche/porosity)   | Jan. 9, 2019  | Yes         | NA                        | NA                 | NA                |                 |                                                |
| [Panoramix](https://github.com/palkeo/panoramix ) | Aug. 21, 2020 | Yes         |                           |                    |                   | `LOG` only      | Partially, in 8 minutes.                       |
| [Yasold](https://github.com/ajlopez/Yasold)       | Nov. 8, 2020  | Yes         | NA                        | NA                 | NA                | NA              |                                                |

