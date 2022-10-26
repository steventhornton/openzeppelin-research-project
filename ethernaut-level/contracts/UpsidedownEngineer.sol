// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


interface IUpsidedownEngineerFactory {
    function hint() external returns(bytes32);
}


/// @title Bytecode level for Ethernaut
/// @author Steven E. Thornton
/// @notice The goal is to take ownership of the contract
/// @dev This contract should only be deployed using the UpsidedownEngineerFactory contract
contract UpsidedownEngineer {

    address public owner;

    address private factory;

    string private hint_3;

    /// EVENTS
    event Hint(string hint);

    constructor() {
        
        owner = msg.sender;

        // Address of the factory contract that deployed this contract
        factory = msg.sender;

        // The a value is set to the hash of the block timestamp so it is somewhat random
        set_a(uint256(keccak256(abi.encodePacked(block.timestamp))));

        hint_3 = "Try to find out what storage slot the solution is stored in";
    }

    /// PUBLIC FUNCTIONS

    /// @notice Allows the owner of the contract to set a new owner. If this function is called by
    /// anyone except the current owner, the contract will self destruct.
    /// @param _newOwner The address of the new owner
    function setOwner(address _newOwner) public {
        if (msg.sender != owner) {
            revert("Maybe the claimOwnership function will work");
        } else {
            owner = _newOwner;
        }
    }

    /// @notice Check if the owner of the contract is msg.sender.
    /// @return true if the owner is msg.sender, false otherwise.
    function isOwner() public view returns(bool) {
        return owner == msg.sender;
    }

    /// @notice Compute the square-root of the input value
    /// @param y Value to take square-root of
    /// @return z The square-root of y such that z = floor(sqrt(y))
    /// @dev This function has function selector: 0x10000001
    function sqrt_215F58CF9(uint256 y) public pure returns (uint256 z) {
        if (y > 3) {
            z = y;
            uint256 x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }

    function claimOwnership() external {
        owner = msg.sender;
        IUpsidedownEngineerFactory(factory).hint();
    }


    /// @notice Calling this function with the correct input will set the owner to msg.sender.
    /// Calling this function with the incorrect input will cause the contract to self destruct.
    /// @param _a Value of `a` from the contract
    /// @param _b Square-root of msg.sender address 
    /// @dev This function has function selector: 0x12345678
    function solve_108B1F57E(uint256 _a, uint256 _b) public payable {
        if (_a == get_a()) {
            uint256 sqrt = sqrt_215F58CF9(uint256(uint160(msg.sender)));
            if (_b == sqrt) {
                owner = msg.sender;
            } else {
                emit Hint(hint_3);
            }
        } else {
            emit Hint(hint_3);
        }
    }

    // PRIVATE FUNCTIONS

    /// @notice Get the `a` value
    /// @return a The value of `a`
    function get_a() private view returns(uint256 a) {
        bytes32 slot = get_a_slot();
        assembly {
            a := sload(slot)
        }
    }

    /// @notice Internal function that sets the `a` value at slot keccak256(abi.encode("The Solution is 42"))
    /// @param a Valut to set `a` to
    function set_a(uint256 a) private {
        bytes32 slot = get_a_slot();
        assembly {
            sstore(slot, a)
        }
    }

    /// @notice Get the slot that the `a` value is stored at.
    /// @return slot The storage slot
    function get_a_slot() private pure returns(bytes32 slot) {
        bytes memory slot_preimage = abi.encode("The Solution is 42");
        slot = keccak256(slot_preimage);
    }

}
