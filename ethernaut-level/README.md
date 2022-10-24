# Ethernaut Level

This directory contains the source for a forthcoming [Ethernaut](https://ethernaut.openzeppelin.com/) level called "Upsidedown Engineer". In this level, only the deployed bytecode for the contract is available. The goal is to take ownership of the contract.

This level is intended to show that contracts without underlying source code are **not** safe from being exploited. There are numerous tools out there that can assist with exploiting contract given only the bytecode. Two real-life examples where contracts were exploited without any underlying Solidity code include:

- TransitSwap
    - https://rekt.news/transit-swap-rekt/
- MEV Bot
    - https://rekt.news/ripmevbot/
    - https://quillaudits.medium.com/earned-1m-lost-1-5m-dark-forest-of-mev-bots-8cd1dc17258c

## Level Description
The code for a contract is not always publicly available but that doesn't mean you can't hack it! In this level only the deployed bytecode is available. Your job is to become the `owner` of the contract.

Things that might help:
- Take a look at the contract on a block explorer
- The Vault level

## Solution
<details>
    <summary>Spoiler Warning!</summary>
    
    The `UpsidedownEngineer` contract contains a function:

    ```solidity
    function solve_108B1F57E(uint256 _a, uint256 _b) public payable {
        if (_a == get_a()) {
            uint256 sqrt = sqrt_215F58CF9(uint256(uint160(msg.sender)));
            if (_b == sqrt) {
                owner = msg.sender;
            } else {
                kill_B708A60B();
            }
        } else {
            kill_B708A60B();
        }
    }
    ```

    that must be called with the correct input values to solve the level. Calling this function with the incorrect input will cause the contract to self-destruct.

    - This function has function selector `0x12345678`.
    - The input value for `_a` should be set to the value at storage slot `keccak256(abi.encode("The Solution is 42"))`
    - The input value for `_b` should be set to the value of `sqrt_215F58CF9(uint256(uint160(msg.sender)))` where the  `sqrt_215F58CF9` function has function selector `0x10000001`.
  
</details>

## Factory
- The `UpsidedownEngineerFactory` contract has been deployed on the Goerli testnet at: <TODO>
- This contract has been verified on https://goerli.etherscan.io/
- In order to not reveal the source of the contract, the factory contract used for creating new level instances will deploy the contract from its bytecode (i.e. it won't use `new UpsidedownEngineer()` as this would reveal the source). Instead, assembly is used to deploy the deploy an instance of the `UpsidedownEngineer` contract directly from its bytecode:
    ```{solidity}
    // Result of solc --bin contracts/UpsidedownEngineer.sol
    bytes memory bytecode = hex"<paste-bytecode-here>";

    assembly {
        addr := create(0, add(bytecode, 0x20), mload(bytecode))
        if iszero(extcodesize(addr)) {
            revert(0, 0)
        }
    }
    ```
- A new instance of the `UpsidedownEngineer` contract can be deployed by calling the `deploy` function on the `UpsidedownEngineerFactory` contract.

## Verify
```
npx hardhat verify --network goerli DEPLOYED_CONTRACT_ADDRESS
```
