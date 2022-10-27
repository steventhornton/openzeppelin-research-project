// Decompiled by library.dedaub.com
// 2022.10.27 16:42 UTC

// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => [uint256]) _balanceOf; // STORAGE[0x0]
mapping (uint256 => [uint256]) _allowance; // STORAGE[0x1]
uint256 _totalSupply; // STORAGE[0x2]
uint256[] _name; // STORAGE[0x3]
uint256[] _symbol; // STORAGE[0x4]

// Events
Approval(address, address, uint256);
Transfer(address, address, uint256);

function transferFrom(address varg0, address varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(varg0 == varg0);
    require(varg1 == varg1);
    if (_allowance[msg.sender] != ~0) {
        require(_allowance[msg.sender] >= varg2, Error('ERC20: insufficient allowance'));
        0x35a(_allowance[msg.sender] - varg2, msg.sender, varg0);
    }
    0x4f8(varg2, varg1, varg0);
    return 1;
}

function decimals() public payable { 
    return 18;
}

function increaseAllowance(address varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 == varg0);
    require(_allowance[varg0] <= varg1 + _allowance[varg0], Panic(17));
    0x35a(varg1 + _allowance[varg0], varg0, msg.sender);
    return 1;
}

function balanceOf(address varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 == varg0);
    return _balanceOf[varg0];
}

function symbol() public payable { 
    v0 = 0x7eb(_symbol.length);
    v1 = new bytes[](v0);
    v2 = v3 = v1.data;
    v4 = 0x7eb(_symbol.length);
    if (v4) {
        if (31 < v4) {
            do {
                MEM[v2] = STORAGE[v5];
                v5 += 1;
                v2 += 32;
            } while (v3 + v4 <= v2);
        } else {
            MEM[v3] = _symbol.length >> 8 << 8;
        }
    }
    v6 = new array[](v1.length);
    v7 = v8 = 0;
    while (v7 < v1.length) {
        v6[v7] = v1[v7];
        v7 += 32;
    }
    v6[v1.length] = 0;
    return v6;
}

function decreaseAllowance(address varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 == varg0);
    require(_allowance[varg0] >= varg1, Error('ERC20: decreased allowance below zero'));
    0x35a(_allowance[varg0] - varg1, varg0, msg.sender);
    return 1;
}

function transfer(address varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 == varg0);
    0x4f8(varg1, varg0, msg.sender);
    return 1;
}

function allowance(address varg0, address varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 == varg0);
    require(varg1 == varg1);
    return _allowance[varg1];
}

function 0x35a(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (address(varg2)) {
        if (address(varg1)) {
            v0 = address(varg2);
            v1 = address(varg1);
            _allowance[v1] = varg0;
            emit Approval(v0, v1, varg0);
            return ;
        }
    }
    revert(Error('ERC20: approve to the zero address', 'ERC20: approve to the zero address'));
}

function 0x4f8(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (address(varg2)) {
        if (address(varg1)) {
            v0 = address(varg2);
            if (_balanceOf[v0] >= varg0) {
                v1 = address(varg2);
                _balanceOf[v1] = _balanceOf[v0] - varg0;
                v2 = address(varg1);
                v3 = varg0 + _balanceOf[v2];
                require(_balanceOf[v2] <= v3, Panic(17));
                _balanceOf[v2] = v3;
                emit Transfer(address(varg2), address(varg1), varg0);
                return ;
            }
        }
    }
    revert(Error('ERC20: transfer amount exceeds balance'));
}

function 0x7eb(uint256 varg0) private { 
    v0 = v1 = varg0 >> 1;
    v2 = varg0 & 0x1;
    if (!v2) {
        v0 = v3 = v1 & 0x7f;
    }
    require(v2 - (v0 < 32), Panic(34));
    return v0;
}

function () public payable { 
    revert();
}

function name() public payable { 
    v0 = 0x7eb(_name.length);
    v1 = new bytes[](v0);
    v2 = v3 = v1.data;
    v4 = 0x7eb(_name.length);
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
        v7 += 32;
    }
    v6[v1.length] = 0;
    return v6;
}

function approve(address varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 == varg0);
    0x35a(varg1, varg0, msg.sender);
    return 1;
}

function totalSupply() public payable { 
    return _totalSupply;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    require(!msg.value);
    if (msg.data.length >= 4) {
        if (0x39509351 > function_selector >> 224) {
            if (0x6fdde03 == function_selector >> 224) {
                name();
            } else if (0x95ea7b3 == function_selector >> 224) {
                approve(address,uint256);
            } else if (0x18160ddd == function_selector >> 224) {
                totalSupply();
            } else if (0x23b872dd == function_selector >> 224) {
                transferFrom(address,address,uint256);
            } else if (0x313ce567 == function_selector >> 224) {
                decimals();
            }
        } else if (0x39509351 == function_selector >> 224) {
            increaseAllowance(address,uint256);
        } else if (0x70a08231 == function_selector >> 224) {
            balanceOf(address);
        } else if (0x95d89b41 == function_selector >> 224) {
            symbol();
        } else if (0xa457c2d7 == function_selector >> 224) {
            decreaseAllowance(address,uint256);
        } else if (0xa9059cbb == function_selector >> 224) {
            transfer(address,uint256);
        } else {
            require(0xdd62ed3e == function_selector >> 224);
            allowance(address,address);
        }
    }
    ();
}
