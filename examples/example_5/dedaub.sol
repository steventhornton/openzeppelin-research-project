// Decompiled by library.dedaub.com
// 2022.10.26 17:11 UTC



function () public payable { 
    revert();
}

function mint(uint256 varg0, uint256 varg1) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    require(varg0 == varg0);
    require(varg1 == varg1);
    return varg0 + varg1;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    require(!msg.value);
    if (msg.data.length >= 4) {
        if (0xa0712d68 == function_selector >> 224) {
            mint(uint256);
        }
    }
    ();
}


