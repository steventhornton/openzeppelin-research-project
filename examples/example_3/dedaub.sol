// Decompiled by library.dedaub.com
// 2022.10.26 15:42 UTC

// Data structures and variables inferred from the use of storage instructions
uint256[] _name; // STORAGE[0x0]


function 0x2cc(uint256 varg0) private { 
    v0 = v1 = varg0 >> 1;
    v2 = varg0 & 0x1;
    if (!v2) {
        v0 = v3 = v1 & 0x7f;
    }
    require(v2 != v0 < 32, Panic(34));
    return v0;
}

function () public payable { 
    revert();
}

function name() public payable { 
    v0 = 0x2cc(_name.length);
    v1 = new bytes[](v0);
    v2 = v3 = v1.data;
    v4 = 0x2cc(_name.length);
    if (v4) {
        if (31 < v4) {
            do {
                MEM[v2] = STORAGE[v5];
                v5 += 1;
                v2 += 32;
            } while (v3 + v4 <= v2);
        } else {
            MEM[v3] = _name.length >> 8 << 8;
        }
    }
    v6 = new array[](v1.length);
    v7 = v8 = 0;
    while (v7 < v1.length) {
        v6[v7] = v1[v7];
        v7 = v7 + 32;
    }
    if (v7 > v1.length) {
        v6[v1.length] = 0;
    }
    return v6;
}

function 0xc66feb94() public payable { 
    v0 = v1 = v2.data;
    v3 = 0x2cc(_name.length);
    if (v2.length) {
        if (31 < v2.length) {
            _name.length = 25;
            if (v2.length) {
                while (v1 + v2.length > v0) {
                    STORAGE[v4] = MEM[v0];
                    v0 += 32;
                    v4 += 1;
                }
            }
        } else {
            _name.length = 0x18 | ~0xff & 'Hello World!';
        }
    } else {
        _name.length = 0;
    }
    while (v5 + (31 + v3 >> 5) > v4) {
        STORAGE[v4] = 0;
        v4 += 1;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    require(!msg.value);
    if (msg.data.length >= 4) {
        if (0x6fdde03 == function_selector >> 224) {
            name();
        } else if (0xc66feb94 == function_selector >> 224) {
            0xc66feb94();
        }
    }
    ();
}

