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

## Summary

Decompiling EVM bytecode into Solidity-like code can provide transparancy on the inner workings of a deployed contract. This can allow for analysis at the bytecode level which is especially important when the source isn't available.

Many tools have been developed for decompiling bytecode. Unfortunately, many of these tools appear unmaintained ([Panoramix](https://github.com/palkeo/panoramix), [Porosity](https://github.com/msuiche/porosity), [Vandal](https://github.com/usyd-blockchain/vandal), [Yasold](https://github.com/ajlopez/Yasold)), wile others are close-source ([Dedaub](https://library.dedaub.com/decompile), [JEB](https://www.pnfsoftware.com/jeb/evm), [Ethervm](https://ethervm.io/decompile)). Of the currently available compilers, my recommendation would be:

- Use Dedaub for any decompilations that are not being done programatically
- Use Panoramix (despite being unmaintained) for anything that needs to be automated or done locally

### Gigahorse 2.0 (Dedaub)

The [Gigahorse 2.0 (Dedaub)](https://library.dedaub.com/decompile) decompiler is by far the best available compiler. It is available through the Dedaub website and will typically produce the best output. It supports private function identification, public function identification with function name matching with the correct number of inputs, event emissions with signature mapping, and return value identification. Since it is available online, there are no installation requirements.

The underlying source code is partially available but will only output the 3 address code. No pretty-printed (Solidity-like) version is produced. Installation is not straight forward as it requires building/installing [Soufflé](https://souffle-lang.github.io/index.html).

There are some limitations with Dedaub. First, since it cannot be run locally, decompiling large contracts is impossible as the decompiler times out. This is partially mitigated as the team actively decompiles all deployed contracts on Ethereum mainnet. There is no way to change any of the parameters. This is the only decompiler that appears to be actively under further development.

### Panoramix

Although [Panoramix](https://github.com/palkeo/panoramix) is unmaintained, it remains the best tool to use if decompilation needs to be automated or run locally. This is the decompiler currently used by Etherscan.

Installation is simple as it is a Python package available on pypi. Decompilation is typically fairly fast although for large contracts it can take several minutes. On large contracts, some steps can fail and the output decompilation will be partially complete. There are no (easily) configurable paramters (no command line options to set parameters) so you are stuck using the defaults. It naively maps function selectors without consideration for input arguments and contains no private function identification often leading to cumbersome output.

### Other Decompilers

Some quick notes on other decompilers:

- [**Vandal**](https://github.com/usyd-blockchain/vandal) precedes the Gigahorse 1.0 (Dedaub) compiler. The full source is available although it is no longer maintained. It is highly configurable and could be a better option than Panoramix depending on how difficult installation is.
- [**Gigahose 1.0**](https://zenodo.org/record/2578692) (earlier version of Gigahorse 2.0/Dedaub) is open source. While it is not as advanced as the newer Gigahorse 2.0 version, it may still be superior to Panoramix. It has the same issue of potentially being difficult to install due to its dependence on Souffle.
- [**JEB**](https://www.pnfsoftware.com/jeb/evm) appears to produce nice output based on the examples shown in their documentation. Unfortunately, it is a paid product ($1,800/yr/user) and would unexpectedly exit when attempting to use the demo version locally.
- [**Ethervm**](https://ethervm.io/decompile) is pretty much useless. It is closed source and no useful information can be found on its inner workings. It seems like it naively produces basic blocks and then converts those into Solidity-like code. You would almost be better off just reading through the opcode.
- [**Porosity**](https://github.com/msuiche/porosity) is unmaintained and outdated. Do not use.
- [**Yasold**](https://github.com/ajlopez/Yasold) is unmaintained, outdated, and appears to be an unfinished product. Do not use.

## Details

### Elipmoc/Gigahorse (Dedaub)

#### Source

- https://github.com/nevillegrech/gigahorse-toolchain
- https://library.dedaub.com/decompile

#### Research Articles

- https://yanniss.github.io/elipmoc-oopsla22.pdf
- https://yanniss.github.io/gigahorse-icse19.pdf

#### Notes

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

#### Notes

- Closed source
- Demo version available for free, pro version available for $1,800/user/year.
- Interface discovery (e.g. ERC20, ERC721, etc.)
- https://www.pnfsoftware.com/blog/ethereum-smart-contract-decompiler/

### Panoramix

#### Source

- https://github.com/palkeo/panoramix

#### Research Articles

- 

#### Notes

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

#### Notes

- Unmaintained

### Vandal

#### Source

- https://github.com/usyd-blockchain/vandal

#### Research Articles

https://arxiv.org/abs/1809.03981

#### Notes

- Unmaintained

### Yasold

#### Source

- https://github.com/msuiche/porosity

#### Notes

- Unmaintained

## Comparison

| Decompiler                                        | Last Commit   | Open Source | Function Selector Mapping | Argument Inference | Private Functions | Event Detection | Can Decompile Compound v2 Comptroller Contract |
| ------------------------------------------------- | ------------- | ----------- | ------------------------- | ------------------ | ----------------- | --------------- | ---------------------------------------------- |
| [Dedaub](https://library.dedaub.com/decompile)    | Oct. 25, 2022 | Partially   | Yes                       | Yes                | Yes               | Yes             | No                                             |
| [Ethervm](https://ethervm.io/decompile)           | Dec. 8, 2021  | No          | Yes                       | No                 | Yes               | `LOG` only      | Timeout                                        |
| [JEB](https://www.pnfsoftware.com/jeb/evm)        | Mar. 8, 2022  | No          | Yes                       | No                 | NA                | Yes             | NA                                             |
| [Porosity](https://github.com/msuiche/porosity)   | Jan. 9, 2019  | Yes         | NA                        | NA                 | NA                | NA              | NA                                             |
| [Panoramix](https://github.com/palkeo/panoramix ) | Aug. 21, 2020 | Yes         | Yes                       | No                 | No                | `LOG` only      | Partially, in 8 minutes.                       |
| [Yasold](https://github.com/ajlopez/Yasold)       | Nov. 8, 2020  | Yes         | NA                        | NA                 | NA                | NA              | NA                                             |

