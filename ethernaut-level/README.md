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
- The `UpsidedownEngineerFactory` contract has been deployed on the Goerli testnet at: [0x9edb1702c6678b12b1f144bb5e853a4da22d485a](https://goerli.etherscan.io/address/0x9edb1702c6678b12b1f144bb5e853a4da22d485a).
- This contract has been verified on https://goerli.etherscan.io/
- In order to not reveal the source of the contract, the factory contract used for creating new level instances will deploy the contract from its bytecode (i.e. it won't use `new UpsidedownEngineer()` as this would reveal the source). Instead, assembly is used to deploy the deploy an instance of the `UpsidedownEngineer` contract directly from its bytecode:
    ```{solidity}
    // Result of solc --bin contracts/UpsidedownEngineer.sol
    bytes memory bytecode = hex"608060405234801561001057600080fd5b50600080546001600160a01b031916331790556040805142602082015261004f910160408051601f198184030181529190528051602090910120610054565b6100bc565b600061005e610065565b9190915550565b60008060405160200161009e906020808252601290820152712a34329029b7b63aba34b7b71034b9901a1960711b604082015260600190565b60408051601f19818403018152919052805160209091012092915050565b610402806100cb6000396000f3fe6080604052600436106100745760003560e01c8063123456781161004e57806312345678146100e757806313af4035146100fa5780638da5cb5b1461011a5780638f32d59b1461015257610081565b80631000000014610081578063100000011461009457806310000003146100c757610081565b366100815761007f33ff5b005b34801561008d57600080fd5b5061007f33ff5b3480156100a057600080fd5b506100b46100af366004610319565b610183565b6040519081526020015b60405180910390f35b3480156100d357600080fd5b5061007f6100e2366004610319565b6101f3565b61007f6100f5366004610332565b610217565b34801561010657600080fd5b5061007f610115366004610354565b610267565b34801561012657600080fd5b5060005461013a906001600160a01b031681565b6040516001600160a01b0390911681526020016100be565b34801561015e57600080fd5b506101736000546001600160a01b0316331490565b60405190151581526020016100be565b600060038211156101e4575080600061019d600283610384565b6101a89060016103a6565b90505b818110156101de579050806002816101c38186610384565b6101cd91906103a6565b6101d79190610384565b90506101ab565b50919050565b81156101ee575060015b919050565b6000546001600160a01b0316331461020e5761020b33ff5b50565b61020b8161029f565b61021f6102b0565b82141561025d57600061023133610183565b90508082141561025257600080546001600160a01b03191633179055505050565b61025833ff5b505050565b61026333ff5b5050565b6000546001600160a01b0316331461027f5761020b33ff5b600080546001600160a01b0383166001600160a01b031990911617905550565b60006102a96102c2565b9190915550565b6000806102bb6102c2565b5492915050565b6000806040516020016102fb906020808252601290820152712a34329029b7b63aba34b7b71034b9901a1960711b604082015260600190565b60408051601f19818403018152919052805160209091012092915050565b60006020828403121561032b57600080fd5b5035919050565b6000806040838503121561034557600080fd5b50508035926020909101359150565b60006020828403121561036657600080fd5b81356001600160a01b038116811461037d57600080fd5b9392505050565b6000826103a157634e487b7160e01b600052601260045260246000fd5b500490565b600082198211156103c757634e487b7160e01b600052601160045260246000fd5b50019056fea2646970667358221220bd53a1cedaada71ba0bd9c9b45f88b387358386cd47bc73a7a020ed33a653e3a64736f6c634300080a0033";

    assembly {
        addr := create(0, add(bytecode, 0x20), mload(bytecode))
        if iszero(extcodesize(addr)) {
            revert(0, 0)
        }
    }
    ```
- A new instance of the `UpsidedownEngineer` contract can be deployed by calling the `deploy` function on the `UpsidedownEngineerFactory` contract.
