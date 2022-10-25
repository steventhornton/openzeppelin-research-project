// Decompiled by library.dedaub.com
// 2022.10.25 13:27 UTC

// Data structures and variables inferred from the use of storage instructions
uint256 _fallback; // STORAGE[0x1]
uint256 _isOwner; // STORAGE[0x0] bytes 0 to 19


function owner() public nonPayable { 
    return _isOwner;
}

function isOwner() public nonPayable { 
    return msg.sender == _isOwner;
}

function 0x36a(uint256 varg0) private { 
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
    require(_fallback <= ~1, Panic(17));
    _fallback = _fallback + 1;
    if (_fallback) {
        if (1 != _fallback) {
            if (2 != _fallback) {
                if (3 == _fallback) {
                }
            }
        }
    }
    revert(Error('Try decompiling the contract'));
}

function 0x10000000() public nonPayable { 
    require(_fallback <= ~1, Panic(17));
    _fallback = _fallback + 1;
    if (_fallback) {
        if (1 != _fallback) {
            if (2 != _fallback) {
                if (3 == _fallback) {
                }
            }
        }
    }
    revert(Error('Try decompiling the contract'));
}

function 0x10000001(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    v0 = 0x36a(varg0);
    return v0;
}

function 0x10000003(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    if (msg.sender == _isOwner) {
        STORAGE[keccak256(32, 18, 'The Solution is 42')] = varg0;
        exit;
    } else {
        require(_fallback <= ~1, Panic(17));
        _fallback = _fallback + 1;
        if (_fallback) {
            if (1 != _fallback) {
                if (2 != _fallback) {
                    if (3 == _fallback) {
                    }
                }
            }
        }
        revert(Error('No more hints'));
    }
}

function 0x12345678(uint256 varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    if (varg0 == STORAGE[keccak256(32, 18, 'The Solution is 42')]) {
        v0 = 0x36a(msg.sender);
        if (varg1 == v0) {
            _isOwner = msg.sender;
            exit;
        }
    }
    require(_fallback <= ~1, Panic(17));
    _fallback = _fallback + 1;
    if (_fallback) {
        if (1 != _fallback) {
            if (2 != _fallback) {
                if (3 == _fallback) {
                }
            }
        }
    }
    revert(Error('Try decompiling the contract'));
}

function setOwner(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 == varg0);
    if (msg.sender == _isOwner) {
        _isOwner = varg0;
        exit;
    } else {
        require(_fallback <= ~1, Panic(17));
        _fallback = _fallback + 1;
        if (_fallback) {
            if (1 != _fallback) {
                if (2 != _fallback) {
                    if (3 == _fallback) {
                    }
                }
            }
        }
        revert(Error('Try decompiling the contract'));
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        ();
    } else if (0x12345678 > function_selector >> 224) {
        if (0x10000000 == function_selector >> 224) {
            0x10000000();
        } else if (0x10000001 == function_selector >> 224) {
            0x10000001();
        } else if (0x10000003 == function_selector >> 224) {
            0x10000003();
        }
    } else if (0x12345678 == function_selector >> 224) {
        0x12345678();
    } else if (0x13af4035 == function_selector >> 224) {
        setOwner(address);
    } else if (0x8da5cb5b == function_selector >> 224) {
        owner();
    } else if (0x8f32d59b == function_selector >> 224) {
        isOwner();
    }
}
