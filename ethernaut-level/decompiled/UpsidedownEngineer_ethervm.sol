contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
    
        if (msg.data.length < 0x04) { revert(memory[0x00:0x00]); }
    
        var var0 = msg.data[0x00:0x20] >> 0xe0;
    
        if (var0 == 0x10000001) {
            // Dispatch table entry for 0x10000001 (unknown)
            var var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x007a;
            var var2 = 0x0075;
            var var3 = msg.data.length;
            var var4 = 0x04;
            var2 = func_03E1(var3, var4);
            var1 = func_0075(var2);
        
        label_007A:
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = var1;
            var1 = temp0 + 0x20;
        
        label_0084:
            var temp1 = memory[0x40:0x60];
            return memory[temp1:temp1 + var1 - temp1];
        } else if (var0 == 0x12345678) {
            // Dispatch table entry for 0x12345678 (unknown)
            var1 = 0x00a0;
            var2 = 0x009b;
            var3 = msg.data.length;
            var4 = 0x04;
            var2, var3 = func_03FA(var3, var4);
            func_009B(var2, var3);
            stop();
        } else if (var0 == 0x13af4035) {
            // Dispatch table entry for setOwner(address)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x00a0;
            var2 = 0x00bd;
            var3 = msg.data.length;
            var4 = 0x04;
            var2 = func_041C(var3, var4);
            func_00BD(var2);
            stop();
        } else if (var0 == 0x4e71e0c8) {
            // Dispatch table entry for claimOwnership()
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x00a0;
            claimOwnership();
            stop();
        } else if (var0 == 0x8da5cb5b) {
            // Dispatch table entry for owner()
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x00f7;
            var2 = storage[0x00] & (0x01 << 0xa0) - 0x01;
            var temp2 = memory[0x40:0x60];
            memory[temp2:temp2 + 0x20] = var2 & (0x01 << 0xa0) - 0x01;
            var2 = temp2 + 0x20;
            goto label_0084;
        } else if (var0 == 0x8f32d59b) {
            // Dispatch table entry for isOwner()
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = msg.sender == storage[0x00] & (0x01 << 0xa0) - 0x01;
            var temp3 = memory[0x40:0x60];
            memory[temp3:temp3 + 0x20] = !!var1;
            var1 = temp3 + 0x20;
            goto label_0084;
        } else { revert(memory[0x00:0x00]); }
    }
    
    function func_0075(var arg0) returns (var r0) {
        r0 = func_0140(arg0);
        // Error: Could not resolve method call return address!
    }
    
    function func_009B(var arg0, var arg1) {
        var var0 = 0x01b8;
        var0 = func_0378();
    
        if (arg0 != var0) {
            var0 = 0x7e4c830d27ef9b1819f6c1710f43e650db84477e9efee4c78342793292f56a23;
            var var1 = 0x0258;
            var var2 = 0x02;
            var var3 = memory[0x40:0x60];
            var1 = func_0494(var2, var3);
            var temp0 = memory[0x40:0x60];
            log(memory[temp0:temp0 + var1 - temp0], [stack[-2]]);
            return;
        } else {
            var0 = 0x00;
            var1 = 0x01ca;
            var2 = msg.sender;
            var1 = func_0140(var2);
            var0 = var1;
        
            if (arg1 != var0) {
                var1 = 0x7e4c830d27ef9b1819f6c1710f43e650db84477e9efee4c78342793292f56a23;
                var2 = 0x021b;
                var var4 = memory[0x40:0x60];
                var3 = 0x02;
                var2 = func_0494(var3, var4);
                var temp1 = memory[0x40:0x60];
                log(memory[temp1:temp1 + var2 - temp1], [stack[-2]]);
                return;
            } else {
                storage[0x00] = msg.sender | (storage[0x00] & ~((0x01 << 0xa0) - 0x01));
                return;
            }
        }
    }
    
    function func_00BD(var arg0) {
        if (msg.sender == storage[0x00] & (0x01 << 0xa0) - 0x01) {
            storage[0x00] = (arg0 & (0x01 << 0xa0) - 0x01) | (storage[0x00] & ~((0x01 << 0xa0) - 0x01));
            return;
        } else {
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = 0x461bcd << 0xe5;
            memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = 0x20;
            memory[temp0 + 0x24:temp0 + 0x24 + 0x20] = 0x2b;
            memory[temp0 + 0x44:temp0 + 0x44 + 0x20] = 0x4d617962652074686520636c61696d4f776e6572736869702066756e6374696f;
            memory[temp0 + 0x64:temp0 + 0x64 + 0x20] = 0x6e2077696c6c20776f726b << 0xa8;
            var temp1 = memory[0x40:0x60];
            revert(memory[temp1:temp1 + (temp0 + 0x84) - temp1]);
        }
    }
    
    function func_0140(var arg0) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 > 0x03) {
            var0 = arg0;
            var var1 = 0x00;
            var var2 = 0x015a;
            var var3 = 0x02;
            var var4 = var0;
            var2 = func_044C(var3, var4);
            var temp0 = var2;
            var2 = 0x0165;
            var3 = temp0;
            var4 = 0x01;
            var2 = func_046E(var3, var4);
            var1 = var2;
        
            if (var1 >= var0) {
            label_019B:
                return var0;
            } else {
            label_0171:
                var temp1 = var1;
                var0 = temp1;
                var1 = var0;
                var2 = 0x02;
                var3 = var1;
                var4 = 0x0180;
                var var5 = var3;
                var var6 = arg0;
                var4 = func_044C(var5, var6);
                var temp2 = var3;
                var3 = 0x018a;
                var temp3 = var4;
                var4 = temp2;
                var5 = temp3;
                var3 = func_046E(var4, var5);
                var temp4 = var2;
                var2 = 0x0194;
                var temp5 = var3;
                var3 = temp4;
                var4 = temp5;
                var2 = func_044C(var3, var4);
                var1 = var2;
            
                if (var1 >= var0) { goto label_019B; }
                else { goto label_0171; }
            }
        } else if (!arg0) { return var0; }
        else { return 0x01; }
    }
    
    function claimOwnership() {
        storage[0x00] = msg.sender | (storage[0x00] & ~((0x01 << 0xa0) - 0x01));
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = 0xfbf552db << 0xe0;
        var temp1 = memory[0x40:0x60];
        var var0 = storage[0x01] & (0x01 << 0xa0) - 0x01;
        var var1 = 0xfbf552db;
        var var2 = temp0 + 0x04;
        var temp2;
        temp2, memory[temp1:temp1 + 0x20] = address(var0).call.gas(msg.gas)(memory[temp1:temp1 + temp0 - temp1 + 0x04]);
        var var3 = !temp2;
    
        if (!var3) {
            var temp3 = memory[0x40:0x60];
            var temp4 = returndata.length;
            memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
            var0 = 0x02f2;
            var2 = temp3;
            var1 = var2 + temp4;
            var0 = func_053C(var1, var2);
            return;
        } else {
            var temp5 = returndata.length;
            memory[0x00:0x00 + temp5] = returndata[0x00:0x00 + temp5];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_0378() returns (var r0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x0383;
        var2 = func_038A();
        return storage[var2];
    }
    
    function func_038A() returns (var r0) {
        var var0 = 0x00;
        var var1 = var0;
        var temp0 = memory[0x40:0x60] + 0x20;
        memory[temp0:temp0 + 0x20] = 0x20;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x12;
        memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = 0x2a34329029b7b63aba34b7b71034b9901a19 << 0x71;
        var var2 = temp0 + 0x60;
        var temp1 = memory[0x40:0x60];
        var temp2 = var2;
        memory[temp1:temp1 + 0x20] = temp2 - temp1 + ~0x1f;
        memory[0x40:0x60] = temp2;
        return keccak256(memory[temp1 + 0x20:temp1 + 0x20 + memory[temp1:temp1 + 0x20]]);
    }
    
    function func_03E1(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) { return msg.data[arg1:arg1 + 0x20]; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_03FA(var arg0, var arg1) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
    
        if (arg0 - arg1 i< 0x40) { revert(memory[0x00:0x00]); }
    
        var temp0 = arg1;
        r0 = msg.data[temp0:temp0 + 0x20];
        arg0 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20];
        return r0, arg0;
    }
    
    function func_041C(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i< 0x20) { revert(memory[0x00:0x00]); }
    
        var temp0 = msg.data[arg1:arg1 + 0x20];
        var var1 = temp0;
    
        if (var1 == var1 & (0x01 << 0xa0) - 0x01) { return var1; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_044C(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0) { return arg1 / arg0; }
    
        memory[0x00:0x20] = 0x4e487b71 << 0xe0;
        memory[0x04:0x24] = 0x12;
        revert(memory[0x00:0x24]);
    }
    
    function func_046E(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg1 <= ~arg0) { return arg1 + arg0; }
    
        memory[0x00:0x20] = 0x4e487b71 << 0xe0;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
    
    function func_0494(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x20;
        memory[arg1:arg1 + 0x20] = var1;
        var var2 = 0x00;
        var temp0 = storage[arg0];
        var var3 = temp0;
        var var5 = 0x01;
        var var4 = var3 >> var5;
        var var6 = var3 & var5;
    
        if (!var6) {
            var temp6 = var4 & 0x7f;
            var4 = temp6;
        
            if (var6 != (var4 < var1)) { goto label_04D4; }
            else { goto label_04C1; }
        } else if (var6 != (var4 < var1)) {
        label_04D4:
            var temp1 = var1 + arg1;
            memory[temp1:temp1 + 0x20] = var4;
            var var7 = temp1 + 0x20;
            var var8 = var6;
        
            if (!var8) {
                var temp2 = var7;
                memory[temp2:temp2 + 0x20] = var3 & ~0xff;
                var2 = temp2 + var1;
            
            label_052D:
                return var2;
            } else if (var8 == 0x01) {
                memory[0x00:0x20] = arg0;
                var var9 = keccak256(memory[0x00:0x20]);
                var var10 = 0x00;
            
                if (var10 >= var4) {
                label_0527:
                    var2 = var7 + var10;
                    goto label_052D;
                } else {
                label_0517:
                    var temp3 = var9;
                    var temp4 = var10;
                    memory[temp4 + var7:temp4 + var7 + 0x20] = storage[temp3];
                    var9 = var5 + temp3;
                    var10 = var1 + temp4;
                
                    if (var10 >= var4) { goto label_0527; }
                    else { goto label_0517; }
                }
            } else { goto label_052D; }
        } else {
        label_04C1:
            var temp5 = var2;
            memory[temp5:temp5 + 0x20] = 0x4e487b71 << 0xe0;
            memory[0x04:0x24] = 0x22;
            revert(memory[temp5:temp5 + 0x24]);
        }
    }
    
    function func_053C(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) { return memory[arg1:arg1 + 0x20]; }
        else { revert(memory[0x00:0x00]); }
    }
}

