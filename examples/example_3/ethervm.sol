contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
        var var0 = msg.value;
    
        if (var0) { revert(memory[0x00:0x00]); }
    
        if (msg.data.length < 0x04) { revert(memory[0x00:0x00]); }
    
        var0 = msg.data[0x00:0x20] >> 0xe0;
    
        if (var0 == 0x06fdde03) {
            // Dispatch table entry for name()
            var var1 = 0x0043;
            var var2 = func_0063();
            var temp0 = var2;
            var2 = 0x0050;
            var var3 = temp0;
            var var4 = memory[0x40:0x60];
            var2 = func_027B(var3, var4);
            var temp1 = memory[0x40:0x60];
            return memory[temp1:temp1 + var2 - temp1];
        } else if (var0 == 0xc66feb94) {
            // Dispatch table entry for 0xc66feb94 (unknown)
            var1 = 0x0061;
            func_00F1();
            stop();
        } else { revert(memory[0x00:0x00]); }
    }
    
    function func_0063() returns (var r0) {
        r0 = 0x00;
        var var1 = 0x0070;
        var var2 = storage[r0];
        var1 = func_02CC(var2);
        var temp0 = var1;
        var temp1 = memory[0x40:0x60];
        memory[0x40:0x60] = temp1 + (temp0 + 0x1f) / 0x20 * 0x20 + 0x20;
        var temp2 = r0;
        r0 = temp1;
        var1 = temp2;
        var2 = temp0;
        memory[r0:r0 + 0x20] = var2;
        var var3 = r0 + 0x20;
        var var4 = var1;
        var var6 = storage[var4];
        var var5 = 0x009c;
        var5 = func_02CC(var6);
    
        if (!var5) {
        label_00E9:
            return r0;
        } else if (0x1f < var5) {
            var temp3 = var3;
            var temp4 = temp3 + var5;
            var3 = temp4;
            memory[0x00:0x20] = var4;
            var temp5 = keccak256(memory[0x00:0x20]);
            memory[temp3:temp3 + 0x20] = storage[temp5];
            var4 = temp5 + 0x01;
            var5 = temp3 + 0x20;
        
            if (var3 <= var5) { goto label_00E0; }
        
        label_00CC:
            var temp6 = var4;
            var temp7 = var5;
            memory[temp7:temp7 + 0x20] = storage[temp6];
            var4 = temp6 + 0x01;
            var5 = temp7 + 0x20;
        
            if (var3 > var5) { goto label_00CC; }
        
        label_00E0:
            var temp8 = var3;
            var temp9 = temp8 + (var5 - temp8 & 0x1f);
            var5 = temp8;
            var3 = temp9;
            goto label_00E9;
        } else {
            var temp10 = var3;
            memory[temp10:temp10 + 0x20] = storage[var4] / 0x0100 * 0x0100;
            var5 = var5;
            var3 = temp10 + 0x20;
            goto label_00E9;
        }
    }
    
    function func_00F1() {
        var temp0 = memory[0x40:0x60];
        memory[0x40:0x60] = temp0 + 0x40;
        memory[temp0:temp0 + 0x20] = 0x0c;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x48656c6c6f20576f726c64210000000000000000000000000000000000000000;
        var var0 = 0x013c;
        var var1 = 0x00;
        var var3 = memory[temp0:temp0 + 0x20];
        var var2 = temp0 + 0x20;
        var0 = func_013F(var1, var2, var3);
    }
    
    function func_013F(var arg0, var arg1, var arg2) returns (var r0) {
        var var0 = arg0;
        var var1 = 0x014b;
        var var2 = storage[var0];
        var1 = func_02CC(var2);
        memory[0x00:0x20] = var0;
        var0 = keccak256(memory[0x00:0x20]);
        var temp0 = var0 + (var1 + 0x1f) / 0x20;
        var1 = arg1;
        arg1 = temp0;
    
        if (!arg2) {
            storage[arg0] = 0x00;
            goto label_01B4;
        } else if (0x1f < arg2) {
            var temp1 = arg2;
            storage[arg0] = temp1 + temp1 + 0x01;
        
            if (!temp1) {
            label_01B4:
                var temp2 = arg1;
                arg1 = 0x01c1;
                var0 = var0;
                arg2 = temp2;
                arg1 = func_01C5(arg2, var0);
                return arg0;
            } else {
                var temp3 = arg2;
                var temp4 = var1;
                arg2 = temp4;
                var1 = arg2 + temp3;
            
                if (var1 <= arg2) {
                label_01B3:
                    goto label_01B4;
                } else {
                label_01A1:
                    var temp5 = arg2;
                    var temp6 = var0;
                    storage[temp6] = memory[temp5:temp5 + 0x20];
                    arg2 = temp5 + 0x20;
                    var1 = var1;
                    var0 = temp6 + 0x01;
                
                    if (var1 <= arg2) { goto label_01B3; }
                    else { goto label_01A1; }
                }
            }
        } else {
            var temp7 = arg2;
            storage[arg0] = temp7 + temp7 | (memory[var1:var1 + 0x20] & ~0xff);
            goto label_01B4;
        }
    }
    
    function func_01C5(var arg0, var arg1) returns (var r0) {
        if (arg0 <= arg1) {
        label_01DE:
            return arg0;
        } else {
        label_01CF:
            var temp0 = arg1;
            storage[temp0] = 0x00;
            arg1 = temp0 + 0x01;
        
            if (arg0 <= arg1) { goto label_01DE; }
            else { goto label_01CF; }
        }
    }
    
    function func_01E2(var arg0) returns (var r0) { return memory[arg0:arg0 + 0x20]; }
    
    function func_01ED(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        memory[temp0:temp0 + 0x20] = arg0;
        return temp0 + 0x20;
    }
    
    function func_01FE(var arg0, var arg1, var arg2) {
        var var0 = 0x00;
    
        if (var0 >= arg0) {
        label_021C:
        
            if (var0 <= arg0) { return; }
        
            memory[arg1 + arg0:arg1 + arg0 + 0x20] = 0x00;
            return;
        } else {
        label_020A:
            var temp0 = var0;
            memory[arg1 + temp0:arg1 + temp0 + 0x20] = memory[arg2 + temp0:arg2 + temp0 + 0x20];
            var0 = temp0 + 0x20;
        
            if (var0 >= arg0) { goto label_021C; }
            else { goto label_020A; }
        }
    }
    
    function func_0231(var arg0) returns (var r0) { return arg0 + 0x1f & ~0x1f; }
    
    function func_0242(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x024d;
        var var2 = arg1;
        var1 = func_01E2(var2);
        var2 = 0x0257;
        var var3 = var1;
        var var4 = arg0;
        var2 = func_01ED(var3, var4);
        var temp0 = var2;
        arg0 = temp0;
        var2 = 0x0267;
        var3 = var1;
        var4 = arg0;
        var var5 = arg1 + 0x20;
        func_01FE(var3, var4, var5);
        var2 = 0x0270;
        var3 = var1;
        var2 = func_0231(var3);
        return arg0 + var2;
    }
    
    function func_027B(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        var var0 = temp0 + 0x20;
        memory[temp0:temp0 + 0x20] = var0 - temp0;
        var var1 = 0x0295;
        var var2 = var0;
        var var3 = arg0;
        return func_0242(var2, var3);
    }
    
    function func_02CC(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 / 0x02;
        var var1 = temp0 & 0x01;
    
        if (!var1) {
            var temp1 = var0 & 0x7f;
            var0 = temp1;
        
            if (var1 != (var0 < 0x20)) { goto label_02F8; }
            else { goto label_02F0; }
        } else if (var1 != (var0 < 0x20)) {
        label_02F8:
            return var0;
        } else {
        label_02F0:
            var var2 = 0x02f7;
            memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
            memory[0x04:0x24] = 0x22;
            revert(memory[0x00:0x24]);
        }
    }
}


