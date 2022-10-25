# Decompilers

This document contains details and a comparison of existing EVM bytecode decompilers.

- [Dedaub](https://library.dedaub.com/decompile)
- [Ethervm](https://ethervm.io/decompile)
- [Panoramix](https://github.com/palkeo/panoramix )
- [Porosity](https://github.com/msuiche/porosity)
- [JEB](https://www.pnfsoftware.com/jeb/evm)
- [Yasold](https://github.com/ajlopez/Yasold)

> **TL;DR: Use Elipmoc/Gigahorse**

## Details

### Elipmoc/Gigahorse (Dedaub)

- https://yanniss.github.io/elipmoc-oopsla22.pdf
- Identifies both public and private functions
- Argument inference (number of args and types)
- https://github.com/nevillegrech/gigahorse-toolchain

### Ethervm

- TODO

### JEB

- TODO

### Panoramix

- Used by Etherscan
- Outputs Python (Vyper) code

### Porosity

### Yasold

- TODO

## Comparison

| Decompiler                                        | Open Source | Function Selector Mapping | Argument Infrence | Private Functions |
| ------------------------------------------------- | ----------- | ------------------------- | ----------------- | ----------------- |
| [Dedaub](https://library.dedaub.com/decompile)    | Yes         |                           |                   |                   |
| [Ethervm](https://ethervm.io/decompile)           |             |                           |                   |                   |
| [JEB](https://www.pnfsoftware.com/jeb/evm)        |             |                           |                   |                   |
| [Porosity](https://github.com/msuiche/porosity)   |             |                           |                   |                   |
| [Panoramix](https://github.com/palkeo/panoramix ) |             |                           |                   |                   |
| [Yasold](https://github.com/ajlopez/Yasold)       |             |                           |                   |                   |

