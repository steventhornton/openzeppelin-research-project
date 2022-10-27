contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
        var var0 = msg.value;
    
        if (var0) { revert(memory[0x00:0x00]); }
    
        if (msg.data.length < 0x04) { revert(memory[0x00:0x00]); }
    
        var0 = msg.data[0x00:0x20] >> 0xe0;
    
        if (0x39509351 > var0) {
            if (var0 == 0x06fdde03) {
                // Dispatch table entry for name()
                var var1 = 0x00b6;
                var1 = func_01A0();
            
            label_00B6:
                var temp0 = var1;
                var1 = 0x00c3;
                var var2 = temp0;
                var var3 = memory[0x40:0x60];
                var1 = func_06C6(var2, var3);
            
            label_00C3:
                var temp1 = memory[0x40:0x60];
                return memory[temp1:temp1 + var1 - temp1];
            } else if (var0 == 0x095ea7b3) {
                // Dispatch table entry for approve(address,uint256)
                var1 = 0x00df;
                var2 = 0x00da;
                var3 = msg.data.length;
                var var4 = 0x04;
                var2, var3 = func_0730(var3, var4);
                var4 = 0x00;
                var var5 = msg.sender;
                var var6 = 0x0240;
                var var7 = var5;
                var var8 = var2;
                var var9 = var3;
                func_035A(var7, var8, var9);
            
            label_0240:
                var4 = 0x01;
                var1 = var4;
                // Error: Could not resolve jump destination!
            } else if (var0 == 0x18160ddd) {
                // Dispatch table entry for totalSupply()
                var temp2 = memory[0x40:0x60];
                memory[temp2:temp2 + 0x20] = storage[0x02];
                var1 = temp2 + 0x20;
                goto label_00C3;
            } else if (var0 == 0x23b872dd) {
                // Dispatch table entry for transferFrom(address,address,uint256)
                var1 = 0x00df;
                var2 = 0x010f;
                var3 = msg.data.length;
                var4 = 0x04;
                var2, var3, var4 = func_075A(var3, var4);
                var5 = 0x00;
                var6 = msg.sender;
                var7 = 0x025a;
                var8 = var2;
                var9 = var6;
                var var10 = var4;
                func_047E(var8, var9, var10);
                var7 = 0x0265;
                var8 = var2;
                var9 = var3;
                var10 = var4;
                func_04F8(var8, var9, var10);
                var1 = 0x01;
                // Error: Could not resolve jump destination!
            } else if (var0 == 0x313ce567) {
                // Dispatch table entry for decimals()
                var temp3 = memory[0x40:0x60];
                memory[temp3:temp3 + 0x20] = 0x12;
                var1 = temp3 + 0x20;
                goto label_00C3;
            } else { revert(memory[0x00:0x00]); }
        } else if (var0 == 0x39509351) {
            // Dispatch table entry for increaseAllowance(address,uint256)
            var1 = 0x00df;
            var2 = 0x0131;
            var3 = msg.data.length;
            var4 = 0x04;
            var2, var3 = func_0730(var3, var4);
            var4 = 0x00;
            var5 = msg.sender;
            var6 = 0x0240;
            var7 = var5;
            var8 = var2;
            var9 = var3;
            var10 = 0x0283;
            var var11 = var7;
            var var12 = var8;
            var10 = func_032F(var11, var12);
            func_0283(var7, var8, var9, var10);
            goto label_0240;
        } else if (var0 == 0x70a08231) {
            // Dispatch table entry for balanceOf(address)
            var1 = 0x00f3;
            var2 = 0x0144;
            var3 = msg.data.length;
            var4 = 0x04;
            var2 = func_0796(var3, var4);
            var1 = func_0144(var2);
        
        label_00F3:
            var temp4 = memory[0x40:0x60];
            memory[temp4:temp4 + 0x20] = var1;
            var1 = temp4 + 0x20;
            goto label_00C3;
        } else if (var0 == 0x95d89b41) {
            // Dispatch table entry for symbol()
            var1 = 0x00b6;
            var1 = symbol();
            goto label_00B6;
        } else if (var0 == 0xa457c2d7) {
            // Dispatch table entry for decreaseAllowance(address,uint256)
            var1 = 0x00df;
            var2 = 0x0175;
            var3 = msg.data.length;
            var4 = 0x04;
            var2, var3 = func_0730(var3, var4);
            var1 = func_0175(var2, var3);
            var temp5 = memory[0x40:0x60];
            memory[temp5:temp5 + 0x20] = !!var1;
            var1 = temp5 + 0x20;
            goto label_00C3;
        } else if (var0 == 0xa9059cbb) {
            // Dispatch table entry for transfer(address,uint256)
            var1 = 0x00df;
            var2 = 0x0188;
            var3 = msg.data.length;
            var4 = 0x04;
            var2, var3 = func_0730(var3, var4);
            var4 = 0x00;
            var5 = msg.sender;
            var6 = 0x0240;
            var7 = var5;
            var8 = var2;
            var9 = var3;
            func_04F8(var7, var8, var9);
            goto label_0240;
        } else if (var0 == 0xdd62ed3e) {
            // Dispatch table entry for allowance(address,address)
            var1 = 0x00f3;
            var2 = 0x019b;
            var3 = msg.data.length;
            var4 = 0x04;
            var2, var3 = func_07B8(var3, var4);
            var1 = func_019B(var2, var3);
            goto label_00F3;
        } else { revert(memory[0x00:0x00]); }
    }
    
    function func_0144(var arg0) returns (var r0) {
        memory[0x00:0x20] = arg0 & (0x01 << 0xa0) - 0x01;
        memory[0x20:0x40] = 0x00;
        return storage[keccak256(memory[0x00:0x40])];
    }
    
    function func_0175(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = msg.sender;
        var var2 = var0;
        var var3 = 0x02af;
        var var4 = var1;
        var var5 = arg0;
        var3 = func_032F(var4, var5);
        var2 = var3;
    
        if (var2 >= arg1) {
            var3 = 0x0265;
            var4 = var1;
            var5 = arg0;
            var var6 = var2 - arg1;
            func_035A(var4, var5, var6);
            return 0x01;
        } else {
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = 0x461bcd << 0xe5;
            memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = 0x20;
            memory[temp0 + 0x24:temp0 + 0x24 + 0x20] = 0x25;
            memory[temp0 + 0x44:temp0 + 0x44 + 0x20] = 0x45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77;
            memory[temp0 + 0x64:temp0 + 0x64 + 0x20] = 0x207a65726f << 0xd8;
            var3 = temp0 + 0x84;
            var temp1 = memory[0x40:0x60];
            revert(memory[temp1:temp1 + var3 - temp1]);
        }
    }
    
    function func_019B(var arg0, var arg1) returns (var r0) {
        r0 = func_032F(arg0, arg1);
        // Error: Could not resolve method call return address!
    }
    
    function func_01A0() returns (var r0) {
        var var0 = 0x60;
        var var1 = 0x03;
        var var2 = 0x01af;
        var var3 = storage[var1];
        var2 = func_07EB(var3);
        var temp0 = var2;
        var temp1 = memory[0x40:0x60];
        memory[0x40:0x60] = temp1 + (temp0 + 0x1f) / 0x20 * 0x20 + 0x20;
        var temp2 = var1;
        var1 = temp1;
        var2 = temp2;
        var3 = temp0;
        memory[var1:var1 + 0x20] = var3;
        var var4 = var1 + 0x20;
        var var5 = var2;
        var var7 = storage[var5];
        var var6 = 0x01db;
        var6 = func_07EB(var7);
    
        if (!var6) {
        label_0228:
            return var1;
        } else if (0x1f < var6) {
            var temp3 = var4;
            var temp4 = temp3 + var6;
            var4 = temp4;
            memory[0x00:0x20] = var5;
            var temp5 = keccak256(memory[0x00:0x20]);
            memory[temp3:temp3 + 0x20] = storage[temp5];
            var5 = temp5 + 0x01;
            var6 = temp3 + 0x20;
        
            if (var4 <= var6) { goto label_021F; }
        
        label_020B:
            var temp6 = var5;
            var temp7 = var6;
            memory[temp7:temp7 + 0x20] = storage[temp6];
            var5 = temp6 + 0x01;
            var6 = temp7 + 0x20;
        
            if (var4 > var6) { goto label_020B; }
        
        label_021F:
            var temp8 = var4;
            var temp9 = temp8 + (var6 - temp8 & 0x1f);
            var6 = temp8;
            var4 = temp9;
            goto label_0228;
        } else {
            var temp10 = var4;
            memory[temp10:temp10 + 0x20] = storage[var5] / 0x0100 * 0x0100;
            var4 = temp10 + 0x20;
            var6 = var6;
            goto label_0228;
        }
    }
    
    function func_0283(var arg0, var arg1, var arg2, var arg3) {
        var temp0 = arg2;
        arg2 = 0x028d;
        var temp1 = arg3;
        arg3 = temp0;
        var var0 = temp1;
        arg2 = func_0825(arg3, var0);
        func_035A(arg0, arg1, arg2);
        // Error: Could not resolve method call return address!
    }
    
    function symbol() returns (var r0) {
        var var0 = 0x60;
        var var1 = 0x04;
        var var2 = 0x01af;
        var var3 = storage[var1];
        var2 = func_07EB(var3);
        var temp0 = var2;
        var temp1 = memory[0x40:0x60];
        memory[0x40:0x60] = temp1 + (temp0 + 0x1f) / 0x20 * 0x20 + 0x20;
        var temp2 = var1;
        var1 = temp1;
        var2 = temp2;
        var3 = temp0;
        memory[var1:var1 + 0x20] = var3;
        var var4 = var1 + 0x20;
        var var5 = var2;
        var var7 = storage[var5];
        var var6 = 0x01db;
        var6 = func_07EB(var7);
    
        if (!var6) {
        label_0228:
            return var1;
        } else if (0x1f < var6) {
            var temp3 = var4;
            var temp4 = temp3 + var6;
            var4 = temp4;
            memory[0x00:0x20] = var5;
            var temp5 = keccak256(memory[0x00:0x20]);
            memory[temp3:temp3 + 0x20] = storage[temp5];
            var5 = temp5 + 0x01;
            var6 = temp3 + 0x20;
        
            if (var4 <= var6) { goto label_021F; }
        
        label_020B:
            var temp6 = var5;
            var temp7 = var6;
            memory[temp7:temp7 + 0x20] = storage[temp6];
            var5 = temp6 + 0x01;
            var6 = temp7 + 0x20;
        
            if (var4 > var6) { goto label_020B; }
        
        label_021F:
            var temp8 = var4;
            var temp9 = temp8 + (var6 - temp8 & 0x1f);
            var6 = temp8;
            var4 = temp9;
            goto label_0228;
        } else {
            var temp10 = var4;
            memory[temp10:temp10 + 0x20] = storage[var5] / 0x0100 * 0x0100;
            var4 = temp10 + 0x20;
            var6 = var6;
            goto label_0228;
        }
    }
    
    function func_032F(var arg0, var arg1) returns (var r0) {
        var temp0 = (0x01 << 0xa0) - 0x01;
        memory[0x00:0x20] = temp0 & arg0;
        memory[0x20:0x40] = 0x01;
        var temp1 = keccak256(memory[0x00:0x40]);
        memory[0x00:0x20] = temp0 & arg1;
        memory[0x20:0x40] = temp1;
        return storage[keccak256(memory[0x00:0x40])];
    }
    
    function func_035A(var arg0, var arg1, var arg2) {
        if (!(arg0 & (0x01 << 0xa0) - 0x01)) {
            var temp9 = memory[0x40:0x60];
            memory[temp9:temp9 + 0x20] = 0x461bcd << 0xe5;
            memory[temp9 + 0x04:temp9 + 0x04 + 0x20] = 0x20;
            memory[temp9 + 0x24:temp9 + 0x24 + 0x20] = 0x24;
            memory[temp9 + 0x44:temp9 + 0x44 + 0x20] = 0x45524332303a20617070726f76652066726f6d20746865207a65726f20616464;
            memory[temp9 + 0x64:temp9 + 0x64 + 0x20] = 0x72657373 << 0xe0;
            var0 = temp9 + 0x84;
            goto label_030B;
        } else if (arg1 & (0x01 << 0xa0) - 0x01) {
            var temp0 = (0x01 << 0xa0) - 0x01;
            var temp1 = temp0 & arg0;
            memory[0x00:0x20] = temp1;
            memory[0x20:0x40] = 0x01;
            var temp2 = keccak256(memory[0x00:0x40]);
            var temp3 = arg1 & temp0;
            memory[0x00:0x20] = temp3;
            memory[0x20:0x40] = temp2;
            var temp4 = arg2;
            storage[keccak256(memory[0x00:0x40])] = temp4;
            var temp5 = memory[0x40:0x60];
            memory[temp5:temp5 + 0x20] = temp4;
            var temp6 = memory[0x40:0x60];
            log(memory[temp6:temp6 + (temp5 + 0x20) - temp6], [0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925, stack[-3] & (0x01 << 0xa0) - 0x01, stack[-2] & (0x01 << 0xa0) - 0x01]);
            return;
        } else {
            var temp7 = memory[0x40:0x60];
            memory[temp7:temp7 + 0x20] = 0x461bcd << 0xe5;
            memory[temp7 + 0x04:temp7 + 0x04 + 0x20] = 0x20;
            memory[temp7 + 0x24:temp7 + 0x24 + 0x20] = 0x22;
            memory[temp7 + 0x44:temp7 + 0x44 + 0x20] = 0x45524332303a20617070726f766520746f20746865207a65726f206164647265;
            memory[temp7 + 0x64:temp7 + 0x64 + 0x20] = 0x7373 << 0xf0;
            var var0 = temp7 + 0x84;
        
        label_030B:
            var temp8 = memory[0x40:0x60];
            revert(memory[temp8:temp8 + var0 - temp8]);
        }
    }
    
    function func_047E(var arg0, var arg1, var arg2) {
        var var0 = 0x00;
        var var1 = 0x048a;
        var var2 = arg0;
        var var3 = arg1;
        var1 = func_032F(var2, var3);
        var0 = var1;
    
        if (var0 == ~0x00) {
        label_04F2:
            return;
        } else if (var0 >= arg2) {
            var1 = 0x04f2;
            var2 = arg0;
            var3 = arg1;
            var var4 = var0 - arg2;
            func_035A(var2, var3, var4);
            goto label_04F2;
        } else {
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = 0x461bcd << 0xe5;
            memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = 0x20;
            memory[temp0 + 0x24:temp0 + 0x24 + 0x20] = 0x1d;
            memory[temp0 + 0x44:temp0 + 0x44 + 0x20] = 0x45524332303a20696e73756666696369656e7420616c6c6f77616e6365000000;
            var1 = temp0 + 0x64;
            var temp1 = memory[0x40:0x60];
            revert(memory[temp1:temp1 + var1 - temp1]);
        }
    }
    
    function func_04F8(var arg0, var arg1, var arg2) {
        if (!(arg0 & (0x01 << 0xa0) - 0x01)) {
            var temp6 = memory[0x40:0x60];
            memory[temp6:temp6 + 0x20] = 0x461bcd << 0xe5;
            memory[temp6 + 0x04:temp6 + 0x04 + 0x20] = 0x20;
            memory[temp6 + 0x24:temp6 + 0x24 + 0x20] = 0x25;
            memory[temp6 + 0x44:temp6 + 0x44 + 0x20] = 0x45524332303a207472616e736665722066726f6d20746865207a65726f206164;
            memory[temp6 + 0x64:temp6 + 0x64 + 0x20] = 0x6472657373 << 0xd8;
            var0 = temp6 + 0x84;
            goto label_030B;
        } else if (arg1 & (0x01 << 0xa0) - 0x01) {
            memory[0x00:0x20] = arg0 & (0x01 << 0xa0) - 0x01;
            memory[0x20:0x40] = 0x00;
            var var0 = storage[keccak256(memory[0x00:0x40])];
        
            if (var0 >= arg2) {
                var temp0 = (0x01 << 0xa0) - 0x01;
                memory[0x00:0x20] = arg0 & temp0;
                memory[0x20:0x40] = 0x00;
                storage[keccak256(memory[0x00:0x40])] = var0 - arg2;
                memory[0x00:0x20] = arg1 & temp0;
                var var2 = keccak256(memory[0x00:0x40]);
                var var1 = arg2;
                var var3 = 0x00;
                var var4 = 0x066d;
                var var6 = storage[var2];
                var var5 = var1;
                var4 = func_0825(var5, var6);
                storage[var2] = var4;
                var1 = arg1 & (0x01 << 0xa0) - 0x01;
                var2 = arg0 & (0x01 << 0xa0) - 0x01;
                var3 = 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef;
                var temp1 = memory[0x40:0x60];
                memory[temp1:temp1 + 0x20] = arg2;
                var4 = temp1 + 0x20;
                var temp2 = memory[0x40:0x60];
                log(memory[temp2:temp2 + var4 - temp2], [stack[-2], stack[-3], stack[-4]]);
                return;
            } else {
                var temp3 = memory[0x40:0x60];
                memory[temp3:temp3 + 0x20] = 0x461bcd << 0xe5;
                memory[temp3 + 0x04:temp3 + 0x04 + 0x20] = 0x20;
                memory[temp3 + 0x24:temp3 + 0x24 + 0x20] = 0x26;
                memory[temp3 + 0x44:temp3 + 0x44 + 0x20] = 0x45524332303a207472616e7366657220616d6f756e7420657863656564732062;
                memory[temp3 + 0x64:temp3 + 0x64 + 0x20] = 0x616c616e6365 << 0xd0;
                var1 = temp3 + 0x84;
            
            label_030B:
                var temp4 = memory[0x40:0x60];
                revert(memory[temp4:temp4 + var1 - temp4]);
            }
        } else {
            var temp5 = memory[0x40:0x60];
            memory[temp5:temp5 + 0x20] = 0x461bcd << 0xe5;
            memory[temp5 + 0x04:temp5 + 0x04 + 0x20] = 0x20;
            memory[temp5 + 0x24:temp5 + 0x24 + 0x20] = 0x23;
            memory[temp5 + 0x44:temp5 + 0x44 + 0x20] = 0x45524332303a207472616e7366657220746f20746865207a65726f2061646472;
            memory[temp5 + 0x64:temp5 + 0x64 + 0x20] = 0x657373 << 0xe8;
            var0 = temp5 + 0x84;
            goto label_030B;
        }
    }
    
    function func_06C6(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x20;
        var temp0 = arg1;
        memory[temp0:temp0 + 0x20] = var1;
        var temp1 = memory[arg0:arg0 + 0x20];
        var var2 = temp1;
        memory[temp0 + var1:temp0 + var1 + 0x20] = var2;
        var var3 = 0x00;
    
        if (var3 >= var2) {
        label_06F3:
            var temp2 = var2;
            var temp3 = arg1;
            memory[temp3 + temp2 + 0x40:temp3 + temp2 + 0x40 + 0x20] = 0x00;
            return temp3 + (temp2 + 0x1f & ~0x1f) + 0x40;
        } else {
        label_06E0:
            var temp4 = var3;
            var temp5 = var1;
            memory[temp4 + arg1 + 0x40:temp4 + arg1 + 0x40 + 0x20] = memory[temp5 + temp4 + arg0:temp5 + temp4 + arg0 + 0x20];
            var3 = temp5 + temp4;
        
            if (var3 >= var2) { goto label_06F3; }
            else { goto label_06E0; }
        }
    }
    
    function func_0714(var arg0) returns (var r0) {
        var temp0 = msg.data[arg0:arg0 + 0x20];
        var var0 = temp0;
    
        if (var0 == var0 & (0x01 << 0xa0) - 0x01) { return var0; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_0730(var arg0, var arg1) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
    
        if (arg0 - arg1 i< 0x40) { revert(memory[0x00:0x00]); }
    
        var var2 = 0x074c;
        var var3 = arg1;
        var2 = func_0714(var3);
        r0 = var2;
        arg0 = msg.data[arg1 + 0x20:arg1 + 0x20 + 0x20];
        return r0, arg0;
    }
    
    function func_075A(var arg0, var arg1) returns (var r0, var arg0, var arg1) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
    
        if (arg0 - arg1 i< 0x60) { revert(memory[0x00:0x00]); }
    
        var var3 = 0x0778;
        var var4 = arg1;
        var3 = func_0714(var4);
        var0 = var3;
        var3 = 0x0786;
        var4 = arg1 + 0x20;
        var3 = func_0714(var4);
        arg1 = msg.data[arg1 + 0x40:arg1 + 0x40 + 0x20];
        arg0 = var3;
        r0 = var0;
        return r0, arg0, arg1;
    }
    
    function func_0796(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i< 0x20) { revert(memory[0x00:0x00]); }
    
        var var1 = 0x07b1;
        var var2 = arg1;
        return func_0714(var2);
    }
    
    function func_07B8(var arg0, var arg1) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
    
        if (arg0 - arg1 i< 0x40) { revert(memory[0x00:0x00]); }
    
        var var2 = 0x07d4;
        var var3 = arg1;
        var2 = func_0714(var3);
        var0 = var2;
        var2 = 0x07e2;
        var3 = arg1 + 0x20;
        var2 = func_0714(var3);
        arg0 = var2;
        r0 = var0;
        return r0, arg0;
    }
    
    function func_07EB(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 >> 0x01;
        var var1 = temp0 & 0x01;
    
        if (!var1) {
            var temp1 = var0 & 0x7f;
            var0 = temp1;
        
            if (var1 - (var0 < 0x20)) { goto label_081F; }
            else { goto label_080A; }
        } else if (var1 - (var0 < 0x20)) {
        label_081F:
            return var0;
        } else {
        label_080A:
            memory[0x00:0x20] = 0x4e487b71 << 0xe0;
            memory[0x04:0x24] = 0x22;
            revert(memory[0x00:0x24]);
        }
    }
    
    function func_0825(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        var var0 = arg0 + temp0;
    
        if (temp0 <= var0) { return var0; }
    
        memory[0x00:0x20] = 0x4e487b71 << 0xe0;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
}

