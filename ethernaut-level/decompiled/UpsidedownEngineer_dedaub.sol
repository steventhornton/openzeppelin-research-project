// Decompiled by library.dedaub.com
// 2022.10.26 14:51 UTC

// Data structures and variables inferred from the use of storage instructions
uint256[] array_2; // STORAGE[0x2]
uint256 _isOwner; // STORAGE[0x0] bytes 0 to 19
uint256 _claimOwnership; // STORAGE[0x1] bytes 0 to 19


function isOwner() public nonPayable { 
    return msg.sender == _isOwner;
}

function 0x140(uint256 varg0) private { 
    v0 = v1 = 0;
    if (varg0 <= 3) {
        if (varg0) {
            v0 = v2 = 1;
        }
        return v0;
    } else {
        require(2, Panic(18));
        v3 = varg0 >> 1;
        require(1 <= ~v3, Panic(17));
        varg0 = v4 = 1 + v3;
        while (varg0 < varg0) {
            if (varg0) {
                break;
            }
            require(varg0, Panic(18));
            v5 = varg0 / varg0;
            require(v5 <= ~varg0, Panic(17));
            require(2, Panic(18));
            varg0 = v5 + varg0 >> 1;
        }
        return varg0;
    }
}

function () public payable { 
    revert();
}

function 0x10000001(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    v0 = 0x140(varg0);
    return v0;
}

function 0x12345678(uint256 varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    if (varg0 != STORAGE[keccak256(32, 18, 'The Solution is 42')]) {
        v0 = v1 = 0;
        v2 = v3 = array_2.length >> 1;
        if (!(array_2.length & 0x1)) {
            v2 = v4 = v3 & 0x7f;
        }
        require(array_2.length & 0x1 != v2 < 32, Panic(34));
        v5 = new array[](v2);
        if (!(array_2.length & 0x1)) {
            MEM[v5.data] = array_2.length & ~0xff;
            goto 0x52dB0x228;
        } else if (array_2.length & 0x1 == 1) {
            v6 = v7 = 0;
            while (v6 < v2) {
                v5[v6] = STORAGE[v8];
                v8 += 1;
                v6 += 32;
            }
        }
        emit 0x7e4c830d27ef9b1819f6c1710f43e650db84477e9efee4c78342793292f56a23(v5);
    } else {
        v9 = 0x140(msg.sender);
        if (varg1 != v9) {
            v10 = v11 = 0;
            v12 = v13 = array_2.length >> 1;
            if (!(array_2.length & 0x1)) {
                v12 = v14 = v13 & 0x7f;
            }
            require(array_2.length & 0x1 != v12 < 32, Panic(34));
            v15 = new array[](v12);
            if (!(array_2.length & 0x1)) {
                MEM[v15.data] = array_2.length & ~0xff;
                goto 0x52dB0x1eb;
            } else if (array_2.length & 0x1 == 1) {
                v16 = v17 = 0;
                while (v16 < v12) {
                    v15[v16] = STORAGE[v18];
                    v18 += 1;
                    v16 += 32;
                }
            }
            emit 0x7e4c830d27ef9b1819f6c1710f43e650db84477e9efee4c78342793292f56a23(v15);
        } else {
            _isOwner = msg.sender;
        }
    }
}

function setOwner(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 == varg0);
    require(msg.sender == _isOwner, Error('Maybe the claimOwnership function will work'));
    _isOwner = varg0;
}

function claimOwnership() public nonPayable { 
    _isOwner = msg.sender;
    v0, v1 = _claimOwnership.hint().gas(msg.gas);
    require(v0); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
}

function owner() public nonPayable { 
    return _isOwner;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x10000001 == function_selector >> 224) {
            0x10000001();
        } else if (0x12345678 == function_selector >> 224) {
            0x12345678();
        } else if (0x13af4035 == function_selector >> 224) {
            setOwner(address);
        } else if (0x4e71e0c8 == function_selector >> 224) {
            claimOwnership();
        } else if (0x8da5cb5b == function_selector >> 224) {
            owner();
        } else if (0x8f32d59b == function_selector >> 224) {
            isOwner();
        }
    }
    ();
}
