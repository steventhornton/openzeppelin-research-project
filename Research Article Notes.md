# Research Article Notes

This document contains a list of research articles that I have reviewed along with my personal notes on the related articles.

- [Elipmoc: Advanced Decompilation of Ethereum Smart Contracts]()
- [Ethainter: A Smart Contract Security Analyzer for Composite Vulnerabilities]()

## Elipmoc: Advanced Decompilation of Ethereum Smart Contracts

### Reference

Grech, N., Lagouvardos, S., Tsatiris, I., Smaragdakis, Y. (2022), Elipmoc: Advanced Decompilation of Ethereum Smart Contracts *Proceedings of the ACM in Programming Languages (OOPSLA).*

### Source

- https://yanniss.github.io/elipmoc-oopsla22.pdf
- https://dl.acm.org/doi/10.1145/3527321
- [elipmoc-oopsla22.pdf](publications/elipmoc-oopsla22.pdf)

### Notes

- The article provides details on the Elipmoc/Gigahorse 2.0 decompiler developed by the Dedaub team
- Elipmoc is compile spelt backwards
- Builds on their previous implementation (https://yanniss.github.io/gigahorse-icse19.pdf)
- Partial source for the decompiler available: https://github.com/nevillegrech/gigahorse-toolchain
- Implements an inference of private functions resulting in smaller output decompiled code
- Generates three-address code
- Uses human-readable private function names in some cases (e.g. `_SafeAdd` for Solidity 0.8)

## Ethainter: A Smart Contract Security Analyzer for Composite Vulnerabilities

https://yanniss.github.io/ethainter-pldi20.pdf

- Ethainter is a security tool for checking information flow with data sanitization in smart contracts
- Information flow is classified into trusted and untrusted
- Models guards (e.g. `onlyOwner`) as well as their effectiveness in sanitizing information
- Ethainter is deployed at contract-library.com
- Ethainter-Kill can automatically exploit issues found by Ethainter
- Taint analysis
  - `owner`
  - `selfdestruct`
  - `delegatecall` with arbitrary address
  - `staticcall`
- Competitor to securify
- 

