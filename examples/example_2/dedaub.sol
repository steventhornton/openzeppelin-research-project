// Decompiled by library.dedaub.com
// 2022.10.26 15:34 UTC

// Data structures and variables inferred from the use of storage instructions
uint256 _f1; // STORAGE[0x0]
uint256 _f2; // STORAGE[0x1]
uint256 _f3; // STORAGE[0x2]
uint256 _f4; // STORAGE[0x3]


function 0x14c(uint256 varg0) private { 
    varg0 = v0 = 0;
    if (varg0 <= 3) {
        if (varg0 != 0) {
            varg0 = v1 = 1;
        }
    } else {
        v2 = _SafeDiv(varg0, 2);
        varg0 = v3 = _SafeAdd(v2, 1);
        while (varg0 < varg0) {
            v4 = _SafeDiv(varg0, varg0);
            v5 = _SafeAdd(v4, varg0);
            varg0 = _SafeDiv(v5, 2);
        }
        goto 0x1c1;
    }
    return varg0;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18));
    return varg0 / varg1;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff - varg1, Panic(17));
    return varg0 + varg1;
}

function () public payable { 
    revert();
}

function 0x3c9d377d() public payable { 
    v0 = 0x14c(_f4);
    return v0;
}

function f2() public payable { 
    v0 = 0x14c(_f2);
    return v0;
}

function f3() public payable { 
    v0 = 0x14c(_f3);
    return v0;
}

function f1() public payable { 
    v0 = 0x14c(_f1);
    return v0;
}

function f4() public payable { 
    v0 = 0x14c(_f4);
    return v0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    require(!msg.value);
    if (msg.data.length >= 4) {
        if (0x3c9d377d == function_selector >> 224) {
            0x3c9d377d();
        } else if (0x9942ec6f == function_selector >> 224) {
            f2();
        } else if (0xaaf05f3d == function_selector >> 224) {
            f3();
        } else if (0xc27fc305 == function_selector >> 224) {
            f1();
        } else if (0xc3f90202 == function_selector >> 224) {
            f4();
        }
    }
    ();
}

