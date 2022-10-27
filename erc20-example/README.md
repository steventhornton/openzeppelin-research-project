# ERC-20 Decompilation Example

This directory presents an example of some of the steps involved in decompiling an ERC-20 contract. The ERC-20 contract is the OpenZeppelin ERC-20 contract (after flattening.)

- The original contract can be seen under [contracts/Tokens.sol](contracts/Tokens.sol).
- The generated opcode from the bytecode using various disassemblers can be found under the [opcode/](opcode) directory.
- The bytecode for the contract with optimization can be found under [bytecode/Token.bin-runtime](bytecode/Token.bin-runtime)
- A control-flow graph of the contract can be found under the [cfg/](cfg/) directory.
- Results of decompiling the contract using various decompilers can be found under the [decompiled/](decompiled/) directory.
