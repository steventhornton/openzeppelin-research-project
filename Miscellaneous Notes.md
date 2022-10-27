# Miscellaneous Notes

- Tools use logical programming ([Souffle](https://souffle-lang.github.io/))
- Build a control-flow graph (CFG) from the opcode
- Opcode -> basic blocks -> CFG
- Basic blocks in bytecode (opcode)
  - Block starts at index 0 or `JUMPDEST`
  - Ends at: `JUMP`, `JUMPI`, `STOP`, `REVERT`, `RETURN`, `INVALID`, `SELFDESTRUCT`
- Tools that use Souffle:
  - Gigahorse
  - Securify (Securify 2.0)
  - Vandal

## Bytecode (opcode) to CFG Tools

### Ethersolve

- https://github.com/SeUniVr/EtherSolve
- https://github.com/SeUniVr/EtherSolve_ICPC2021_ReplicationPackage
- Doesn't run on contracts other than the provided examples (tested on Ethernaut level and Compound Comptroller contract)
- When it does run it produces a nice looking output

### EVM CFG Builder

- https://github.com/crytic/evm_cfg_builder
- https://curiousstuff.eu/post/evm-bytecode-to-graph-using-crytic-cfg-builder/
- Provides a Python interface with basic blocks

