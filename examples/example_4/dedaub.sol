// Decompiled by library.dedaub.com
// 2022.10.26 17:00 UTC


// Events
Transfer(address, address, uint256);

function () public payable { 
    revert();
}

function transfer() public payable { 
    emit Transfer(address(this), msg.sender, this.balance);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    require(!msg.value);
    if (msg.data.length >= 4) {
        if (0x8a4068dd == function_selector >> 224) {
            transfer();
        }
    }
    ();
}
