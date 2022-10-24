# Research Project

This repository contains all content related to my research project as part of the OpenZeppelin Blockchain Security Fellowship. This project looks at EVM-compatible bytecode and explored what information can be extracted given bytecode.

## What Can We Extract from Bytecode?

- Function selectors
  - Can map to possible function names, see [Function Selectors](Miscellaneous Resources.md).
  - Can we guess the input types?
- External calls
  - Determine addresses that are called
  - Determine what functions are called
- Storage
  - View the values stored in the contract (in storage)
- Decompile
  - Typically results in messy code, often fails

## Ethernaut Level

An Ethernaut level has been developed that only provides the player with the deployed bytecode. The player needs to decompile the bytecode to determine how to beat the level. Full details can be found under the [ethernaut-level](ethernaut-level) directory.

## Disassembler Review

A review of existing disassemblers (bytecode to opcode) can be found in the [Disassemblers.md](Disassemblers.md) file.

## Decompiler Review

A review of existing decompilers including a comparison of their capabilities can be found in the [Decompilers.md](Decompilers.md) file.

## Miscellaneous Resources

Miscellaneous resources related to EVM-compatible bytecode and decompilers can be found in the [Miscellaneous Resources.md](Miscellaneous Resources.md) file.

