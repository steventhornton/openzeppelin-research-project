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
                var1 = func_0276();
                var temp0 = var1;
                var1 = 0x00c3;
                var var2 = temp0;
                var var3 = memory[0x40:0x60];
                var1 = func_0B15(var2, var3);
                var temp1 = memory[0x40:0x60];
                return memory[temp1:temp1 + var1 - temp1];
            } else if (var0 == 0x095ea7b3) {
                // Dispatch table entry for approve(address,uint256)
                var1 = 0x00e6;
                var2 = 0x00e1;
                var3 = msg.data.length - 0x04 + 0x04;
                var var4 = 0x04;
                var2, var3 = func_0BD0(var3, var4);
                var1 = func_00E1(var2, var3);
                var temp2 = var1;
                var1 = 0x00f3;
                var2 = temp2;
                var3 = memory[0x40:0x60];
                var1 = func_0C2B(var2, var3);
                var temp3 = memory[0x40:0x60];
                return memory[temp3:temp3 + var1 - temp3];
            } else if (var0 == 0x18160ddd) {
                // Dispatch table entry for totalSupply()
                var1 = 0x0104;
                var1 = func_032B();
                var temp4 = var1;
                var1 = 0x0111;
                var2 = temp4;
                var3 = memory[0x40:0x60];
                var1 = func_0C55(var2, var3);
                var temp5 = memory[0x40:0x60];
                return memory[temp5:temp5 + var1 - temp5];
            } else if (var0 == 0x23b872dd) {
                // Dispatch table entry for transferFrom(address,address,uint256)
                var1 = 0x0134;
                var2 = 0x012f;
                var4 = 0x04;
                var3 = var4 + (msg.data.length - var4);
                var2, var3, var4 = func_0C70(var3, var4);
                var1 = func_012F(var2, var3, var4);
                var temp6 = var1;
                var1 = 0x0141;
                var2 = temp6;
                var3 = memory[0x40:0x60];
                var1 = func_0C2B(var2, var3);
                var temp7 = memory[0x40:0x60];
                return memory[temp7:temp7 + var1 - temp7];
            } else if (var0 == 0x313ce567) {
                // Dispatch table entry for decimals()
                var1 = 0x0152;
                var1 = func_0364();
                var temp8 = var1;
                var1 = 0x015f;
                var2 = temp8;
                var3 = memory[0x40:0x60];
                var1 = func_0CDF(var2, var3);
                var temp9 = memory[0x40:0x60];
                return memory[temp9:temp9 + var1 - temp9];
            } else { revert(memory[0x00:0x00]); }
        } else if (var0 == 0x39509351) {
            // Dispatch table entry for increaseAllowance(address,uint256)
            var1 = 0x0182;
            var2 = 0x017d;
            var3 = msg.data.length - 0x04 + 0x04;
            var4 = 0x04;
            var2, var3 = func_0BD0(var3, var4);
            var1 = func_017D(var2, var3);
            var temp10 = var1;
            var1 = 0x018f;
            var2 = temp10;
            var3 = memory[0x40:0x60];
            var1 = func_0C2B(var2, var3);
            var temp11 = memory[0x40:0x60];
            return memory[temp11:temp11 + var1 - temp11];
        } else if (var0 == 0x70a08231) {
            // Dispatch table entry for balanceOf(address)
            var1 = 0x01b2;
            var2 = 0x01ad;
            var3 = msg.data.length - 0x04 + 0x04;
            var4 = 0x04;
            var2 = func_0CFA(var3, var4);
            var1 = func_01AD(var2);
            var temp12 = var1;
            var1 = 0x01bf;
            var2 = temp12;
            var3 = memory[0x40:0x60];
            var1 = func_0C55(var2, var3);
            var temp13 = memory[0x40:0x60];
            return memory[temp13:temp13 + var1 - temp13];
        } else if (var0 == 0x95d89b41) {
            // Dispatch table entry for symbol()
            var1 = 0x01d0;
            var1 = func_03EC();
            var temp14 = var1;
            var1 = 0x01dd;
            var2 = temp14;
            var3 = memory[0x40:0x60];
            var1 = func_0B15(var2, var3);
            var temp15 = memory[0x40:0x60];
            return memory[temp15:temp15 + var1 - temp15];
        } else if (var0 == 0xa457c2d7) {
            // Dispatch table entry for decreaseAllowance(address,uint256)
            var1 = 0x0200;
            var2 = 0x01fb;
            var4 = 0x04;
            var3 = var4 + (msg.data.length - var4);
            var2, var3 = func_0BD0(var3, var4);
            var1 = func_01FB(var2, var3);
            var temp16 = var1;
            var1 = 0x020d;
            var2 = temp16;
            var3 = memory[0x40:0x60];
            var1 = func_0C2B(var2, var3);
            var temp17 = memory[0x40:0x60];
            return memory[temp17:temp17 + var1 - temp17];
        } else if (var0 == 0xa9059cbb) {
            // Dispatch table entry for transfer(address,uint256)
            var1 = 0x0230;
            var2 = 0x022b;
            var4 = 0x04;
            var3 = var4 + (msg.data.length - var4);
            var2, var3 = func_0BD0(var3, var4);
            var1 = func_022B(var2, var3);
            var temp18 = var1;
            var1 = 0x023d;
            var2 = temp18;
            var3 = memory[0x40:0x60];
            var1 = func_0C2B(var2, var3);
            var temp19 = memory[0x40:0x60];
            return memory[temp19:temp19 + var1 - temp19];
        } else if (var0 == 0xdd62ed3e) {
            // Dispatch table entry for allowance(address,address)
            var1 = 0x0260;
            var2 = 0x025b;
            var4 = 0x04;
            var3 = var4 + (msg.data.length - var4);
            var2, var3 = func_0D27(var3, var4);
            var1 = func_025B(var2, var3);
            var temp20 = var1;
            var1 = 0x026d;
            var2 = temp20;
            var3 = memory[0x40:0x60];
            var1 = func_0C55(var2, var3);
            var temp21 = memory[0x40:0x60];
            return memory[temp21:temp21 + var1 - temp21];
        } else { revert(memory[0x00:0x00]); }
    }
    
    function func_00E1(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x0313;
        var2 = func_059F();
        var temp0 = var2;
        var1 = temp0;
        var2 = 0x0320;
        var var3 = var1;
        var var4 = arg0;
        var var5 = arg1;
        func_05A7(var3, var4, var5);
        return 0x01;
    }
    
    function func_012F(var arg0, var arg1, var arg2) returns (var r0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x0340;
        var2 = func_059F();
        var temp0 = var2;
        var1 = temp0;
        var2 = 0x034d;
        var var3 = arg0;
        var var4 = var1;
        var var5 = arg2;
        func_0770(var3, var4, var5);
        var2 = 0x0358;
        var3 = arg0;
        var4 = arg1;
        var5 = arg2;
        func_07FC(var3, var4, var5);
        return 0x01;
    }
    
    function func_017D(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x0378;
        var2 = func_059F();
        var temp0 = var2;
        var1 = temp0;
        var2 = 0x0399;
        var var3 = var1;
        var var4 = arg0;
        var var5 = arg1;
        var var6 = 0x038a;
        var var7 = var3;
        var var8 = var4;
        var6 = func_0518(var7, var8);
        func_038A(var3, var4, var5, var6);
        return 0x01;
    }
    
    function func_01AD(var arg0) returns (var r0) {
        memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x00;
        return storage[keccak256(memory[0x00:0x40])];
    }
    
    function func_01FB(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x0489;
        var2 = func_059F();
        var temp0 = var2;
        var1 = temp0;
        var2 = 0x00;
        var var3 = 0x0497;
        var var4 = var1;
        var var5 = arg0;
        var3 = func_0518(var4, var5);
        var2 = var3;
    
        if (var2 >= arg1) {
            var3 = 0x04e9;
            var4 = var1;
            var5 = arg0;
            var var6 = var2 - arg1;
            func_05A7(var4, var5, var6);
            return 0x01;
        } else {
            var temp1 = memory[0x40:0x60];
            memory[temp1:temp1 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var4 = temp1 + 0x04;
            var3 = 0x04d3;
            var3 = func_0E9C(var4);
            var temp2 = memory[0x40:0x60];
            revert(memory[temp2:temp2 + var3 - temp2]);
        }
    }
    
    function func_022B(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x0500;
        var2 = func_059F();
        var temp0 = var2;
        var1 = temp0;
        var2 = 0x050d;
        var var3 = var1;
        var var4 = arg0;
        var var5 = arg1;
        func_07FC(var3, var4, var5);
        return 0x01;
    }
    
    function func_025B(var arg0, var arg1) returns (var r0) {
        r0 = func_0518(arg0, arg1);
        // Error: Could not resolve method call return address!
    }
    
    function func_0276() returns (var r0) {
        var var0 = 0x60;
        var var1 = 0x03;
        var var2 = 0x0285;
        var var3 = storage[var1];
        var2 = func_0D96(var3);
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
        var var6 = 0x02b1;
        var6 = func_0D96(var7);
    
        if (!var6) {
        label_02FE:
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
        
            if (var4 <= var6) { goto label_02F5; }
        
        label_02E1:
            var temp6 = var5;
            var temp7 = var6;
            memory[temp7:temp7 + 0x20] = storage[temp6];
            var5 = temp6 + 0x01;
            var6 = temp7 + 0x20;
        
            if (var4 > var6) { goto label_02E1; }
        
        label_02F5:
            var temp8 = var4;
            var temp9 = temp8 + (var6 - temp8 & 0x1f);
            var6 = temp8;
            var4 = temp9;
            goto label_02FE;
        } else {
            var temp10 = var4;
            memory[temp10:temp10 + 0x20] = storage[var5] / 0x0100 * 0x0100;
            var4 = temp10 + 0x20;
            var6 = var6;
            goto label_02FE;
        }
    }
    
    function func_032B() returns (var r0) { return storage[0x02]; }
    
    function func_0364() returns (var r0) { return 0x12; }
    
    function func_038A(var arg0, var arg1, var arg2, var arg3) {
        var temp0 = arg2;
        arg2 = 0x0394;
        var temp1 = arg3;
        arg3 = temp0;
        var var0 = temp1;
        arg2 = func_0DF6(arg3, var0);
        func_05A7(arg0, arg1, arg2);
        // Error: Could not resolve method call return address!
    }
    
    function func_03EC() returns (var r0) {
        var var0 = 0x60;
        var var1 = 0x04;
        var var2 = 0x03fb;
        var var3 = storage[var1];
        var2 = func_0D96(var3);
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
        var var6 = 0x0427;
        var var7 = storage[var5];
        var6 = func_0D96(var7);
    
        if (!var6) {
        label_0474:
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
        
            if (var4 <= var6) { goto label_046B; }
        
        label_0457:
            var temp6 = var5;
            var temp7 = var6;
            memory[temp7:temp7 + 0x20] = storage[temp6];
            var5 = temp6 + 0x01;
            var6 = temp7 + 0x20;
        
            if (var4 > var6) { goto label_0457; }
        
        label_046B:
            var temp8 = var4;
            var temp9 = temp8 + (var6 - temp8 & 0x1f);
            var6 = temp8;
            var4 = temp9;
            goto label_0474;
        } else {
            var temp10 = var4;
            memory[temp10:temp10 + 0x20] = storage[var5] / 0x0100 * 0x0100;
            var6 = var6;
            var4 = temp10 + 0x20;
            goto label_0474;
        }
    }
    
    function func_0518(var arg0, var arg1) returns (var r0) {
        memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x01;
        var temp0 = keccak256(memory[0x00:0x40]);
        memory[0x00:0x20] = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = temp0;
        return storage[keccak256(memory[0x00:0x40])];
    }
    
    function func_059F() returns (var r0) { return msg.sender; }
    
    function func_05A7(var arg0, var arg1, var arg2) {
        if (!(arg0 & 0xffffffffffffffffffffffffffffffffffffffff)) {
            var temp6 = memory[0x40:0x60];
            memory[temp6:temp6 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var1 = temp6 + 0x04;
            var0 = 0x060d;
            var0 = func_0F2E(var1);
            var temp7 = memory[0x40:0x60];
            revert(memory[temp7:temp7 + var0 - temp7]);
        } else if (arg1 & 0xffffffffffffffffffffffffffffffffffffffff) {
            var temp0 = arg0;
            memory[0x00:0x20] = temp0 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[0x20:0x40] = 0x01;
            var temp1 = keccak256(memory[0x00:0x40]);
            var temp2 = arg1;
            memory[0x00:0x20] = temp2 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[0x20:0x40] = temp1;
            storage[keccak256(memory[0x00:0x40])] = arg2;
            var var0 = temp2 & 0xffffffffffffffffffffffffffffffffffffffff;
            var var1 = temp0 & 0xffffffffffffffffffffffffffffffffffffffff;
            var var2 = 0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925;
            var var3 = 0x0763;
            var var4 = arg2;
            var var5 = memory[0x40:0x60];
            var3 = func_0C55(var4, var5);
            var temp3 = memory[0x40:0x60];
            log(memory[temp3:temp3 + var3 - temp3], [stack[-2], stack[-3], stack[-4]]);
            return;
        } else {
            var temp4 = memory[0x40:0x60];
            memory[temp4:temp4 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var1 = temp4 + 0x04;
            var0 = 0x067c;
            var0 = func_0FC0(var1);
            var temp5 = memory[0x40:0x60];
            revert(memory[temp5:temp5 + var0 - temp5]);
        }
    }
    
    function func_0770(var arg0, var arg1, var arg2) {
        var var0 = 0x00;
        var var1 = 0x077c;
        var var2 = arg0;
        var var3 = arg1;
        var1 = func_0518(var2, var3);
        var0 = var1;
    
        if (var0 == 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) {
        label_07F6:
            return;
        } else if (var0 >= arg2) {
            var1 = 0x07f5;
            var2 = arg0;
            var3 = arg1;
            var var4 = var0 - arg2;
            func_05A7(var2, var3, var4);
            goto label_07F6;
        } else {
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var1 = 0x07df;
            var2 = temp0 + 0x04;
            var1 = func_102C(var2);
            var temp1 = memory[0x40:0x60];
            revert(memory[temp1:temp1 + var1 - temp1]);
        }
    }
    
    function func_07FC(var arg0, var arg1, var arg2) {
        if (!(arg0 & 0xffffffffffffffffffffffffffffffffffffffff)) {
            var temp5 = memory[0x40:0x60];
            memory[temp5:temp5 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var0 = 0x0862;
            var1 = temp5 + 0x04;
            var0 = func_10BE(var1);
            var temp6 = memory[0x40:0x60];
            revert(memory[temp6:temp6 + var0 - temp6]);
        } else if (arg1 & 0xffffffffffffffffffffffffffffffffffffffff) {
            var var0 = 0x08e5;
            var var1 = arg0;
            var var2 = arg1;
            var var3 = arg2;
            func_0A7B(var1, var2, var3);
            memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[0x20:0x40] = 0x00;
            var0 = storage[keccak256(memory[0x00:0x40])];
        
            if (var0 >= arg2) {
                memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
                memory[0x20:0x40] = 0x00;
                storage[keccak256(memory[0x00:0x40])] = var0 - arg2;
                var1 = arg2;
                memory[0x00:0x20] = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
                memory[0x20:0x40] = 0x00;
                var2 = keccak256(memory[0x00:0x40]);
                var3 = 0x00;
                var var4 = 0x09fe;
                var var5 = var1;
                var var6 = storage[var2];
                var4 = func_0DF6(var5, var6);
                storage[var2] = var4;
                var1 = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
                var2 = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
                var3 = 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef;
                var4 = 0x0a62;
                var5 = arg2;
                var6 = memory[0x40:0x60];
                var4 = func_0C55(var5, var6);
                var temp0 = memory[0x40:0x60];
                log(memory[temp0:temp0 + var4 - temp0], [stack[-2], stack[-3], stack[-4]]);
                var1 = 0x0a75;
                var2 = arg0;
                var3 = arg1;
                var4 = arg2;
                func_0A80(var2, var3, var4);
                return;
            } else {
                var temp1 = memory[0x40:0x60];
                memory[temp1:temp1 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                var1 = 0x0962;
                var2 = temp1 + 0x04;
                var1 = func_11E2(var2);
                var temp2 = memory[0x40:0x60];
                revert(memory[temp2:temp2 + var1 - temp2]);
            }
        } else {
            var temp3 = memory[0x40:0x60];
            memory[temp3:temp3 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var1 = temp3 + 0x04;
            var0 = 0x08d1;
            var0 = func_1150(var1);
            var temp4 = memory[0x40:0x60];
            revert(memory[temp4:temp4 + var0 - temp4]);
        }
    }
    
    function func_0A7B(var arg0, var arg1, var arg2) {}
    
    function func_0A80(var arg0, var arg1, var arg2) {}
    
    function func_0A85(var arg0) returns (var r0) { return memory[arg0:arg0 + 0x20]; }
    
    function func_0A90(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        memory[temp0:temp0 + 0x20] = arg0;
        return temp0 + 0x20;
    }
    
    function func_0AA1(var arg0, var arg1, var arg2) {
        var var0 = 0x00;
    
        if (var0 >= arg0) {
        label_0ABF:
            memory[arg1 + arg0:arg1 + arg0 + 0x20] = 0x00;
            return;
        } else {
        label_0AAD:
            var temp0 = var0;
            memory[arg1 + temp0:arg1 + temp0 + 0x20] = memory[arg2 + temp0:arg2 + temp0 + 0x20];
            var0 = temp0 + 0x20;
        
            if (var0 >= arg0) { goto label_0ABF; }
            else { goto label_0AAD; }
        }
    }
    
    function func_0ACB(var arg0) returns (var r0) { return arg0 + 0x1f & ~0x1f; }
    
    function func_0ADC(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x0ae7;
        var var2 = arg1;
        var1 = func_0A85(var2);
        var2 = 0x0af1;
        var var3 = var1;
        var var4 = arg0;
        var2 = func_0A90(var3, var4);
        var temp0 = var2;
        arg0 = temp0;
        var2 = 0x0b01;
        var3 = var1;
        var4 = arg0;
        var var5 = arg1 + 0x20;
        func_0AA1(var3, var4, var5);
        var2 = 0x0b0a;
        var3 = var1;
        var2 = func_0ACB(var3);
        return arg0 + var2;
    }
    
    function func_0B15(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        var var0 = temp0 + 0x20;
        memory[temp0:temp0 + 0x20] = var0 - temp0;
        var var1 = 0x0b2f;
        var var2 = var0;
        var var3 = arg0;
        return func_0ADC(var2, var3);
    }
    
    function func_0B3C(var arg0) returns (var r0) { return arg0 & 0xffffffffffffffffffffffffffffffffffffffff; }
    
    function func_0B5C(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x0b67;
        var var2 = arg0;
        return func_0B3C(var2);
    }
    
    function func_0B6E(var arg0) {
        var var0 = 0x0b77;
        var var1 = arg0;
        var0 = func_0B5C(var1);
    
        if (arg0 == var0) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_0B85(var arg0, var arg1) returns (var r0) {
        var var0 = msg.data[arg1:arg1 + 0x20];
        var var1 = 0x0b94;
        var var2 = var0;
        func_0B6E(var2);
        return var0;
    }
    
    function func_0B9A(var arg0) returns (var r0) { return arg0; }
    
    function func_0BA4(var arg0) {
        var var0 = 0x0bad;
        var var1 = arg0;
        var0 = func_0B9A(var1);
    
        if (arg0 == var0) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_0BBB(var arg0, var arg1) returns (var r0) {
        var var0 = msg.data[arg1:arg1 + 0x20];
        var var1 = 0x0bca;
        var var2 = var0;
        func_0BA4(var2);
        return var0;
    }
    
    function func_0BD0(var arg0, var arg1) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
    
        if (arg0 - arg1 i>= 0x40) {
            var var2 = 0x00;
            var var3 = 0x0bf5;
            var var4 = arg0;
            var var5 = arg1 + var2;
            var3 = func_0B85(var4, var5);
            var0 = var3;
            var2 = 0x20;
            var3 = 0x0c06;
            var4 = arg0;
            var5 = arg1 + var2;
            var3 = func_0BBB(var4, var5);
            arg0 = var3;
            r0 = var0;
            return r0, arg0;
        } else {
            var2 = 0x0be6;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_0C10(var arg0) returns (var r0) { return !!arg0; }
    
    function func_0C1C(var arg0, var arg1) {
        var var0 = 0x0c25;
        var var1 = arg1;
        var0 = func_0C10(var1);
        memory[arg0:arg0 + 0x20] = var0;
    }
    
    function func_0C2B(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        var var0 = temp0 + 0x20;
        var var1 = 0x0c40;
        var var2 = temp0;
        var var3 = arg0;
        func_0C1C(var2, var3);
        return var0;
    }
    
    function func_0C46(var arg0, var arg1) {
        var var0 = 0x0c4f;
        var var1 = arg1;
        var0 = func_0B9A(var1);
        memory[arg0:arg0 + 0x20] = var0;
    }
    
    function func_0C55(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        var var0 = temp0 + 0x20;
        var var1 = 0x0c6a;
        var var2 = temp0;
        var var3 = arg0;
        func_0C46(var2, var3);
        return var0;
    }
    
    function func_0C70(var arg0, var arg1) returns (var r0, var arg0, var arg1) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
    
        if (arg0 - arg1 i>= 0x60) {
            var var3 = 0x00;
            var var4 = 0x0c97;
            var var5 = arg0;
            var var6 = arg1 + var3;
            var4 = func_0B85(var5, var6);
            var0 = var4;
            var3 = 0x20;
            var4 = 0x0ca8;
            var5 = arg0;
            var6 = arg1 + var3;
            var4 = func_0B85(var5, var6);
            var1 = var4;
            var3 = 0x40;
            var4 = 0x0cb9;
            var5 = arg0;
            var6 = arg1 + var3;
            var4 = func_0BBB(var5, var6);
            arg1 = var4;
            arg0 = var1;
            r0 = var0;
            return r0, arg0, arg1;
        } else {
            var3 = 0x0c88;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_0CC3(var arg0) returns (var r0) { return arg0 & 0xff; }
    
    function func_0CD0(var arg0, var arg1) {
        var var0 = 0x0cd9;
        var var1 = arg1;
        var0 = func_0CC3(var1);
        memory[arg0:arg0 + 0x20] = var0;
    }
    
    function func_0CDF(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        var var0 = temp0 + 0x20;
        var var1 = 0x0cf4;
        var var2 = temp0;
        var var3 = arg0;
        func_0CD0(var2, var3);
        return var0;
    }
    
    function func_0CFA(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) {
            var var1 = 0x00;
            var var2 = 0x0d1e;
            var var3 = arg0;
            var var4 = arg1 + var1;
            return func_0B85(var3, var4);
        } else {
            var1 = 0x0d0f;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_0D27(var arg0, var arg1) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
    
        if (arg0 - arg1 i>= 0x40) {
            var var2 = 0x00;
            var var3 = 0x0d4c;
            var var4 = arg0;
            var var5 = arg1 + var2;
            var3 = func_0B85(var4, var5);
            var0 = var3;
            var2 = 0x20;
            var3 = 0x0d5d;
            var4 = arg0;
            var5 = arg1 + var2;
            var3 = func_0B85(var4, var5);
            arg0 = var3;
            r0 = var0;
            return r0, arg0;
        } else {
            var2 = 0x0d3d;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_0D96(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 / 0x02;
        var var1 = temp0 & 0x01;
    
        if (!var1) {
            var temp1 = var0 & 0x7f;
            var0 = temp1;
        
            if (var1 - (var0 < 0x20)) { goto label_0DC1; }
            else { goto label_0DB9; }
        } else if (var1 - (var0 < 0x20)) {
        label_0DC1:
            return var0;
        } else {
        label_0DB9:
            var var2 = 0x0dc0;
            memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
            memory[0x04:0x24] = 0x22;
            revert(memory[0x00:0x24]);
        }
    }
    
    function func_0DF6(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x0e01;
        var var2 = arg1;
        var1 = func_0B9A(var2);
        arg1 = var1;
        var1 = 0x0e0c;
        var2 = arg0;
        var1 = func_0B9A(var2);
        arg0 = var1;
        var temp0 = arg1;
        var0 = temp0 + arg0;
    
        if (temp0 <= var0) { return var0; }
    
        var1 = 0x0e23;
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
    
    function func_0E2A(var arg0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x20] = 0x45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x207a65726f000000000000000000000000000000000000000000000000000000;
    }
    
    function func_0E79(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x0e86;
        var var2 = 0x25;
        var var3 = arg0;
        var1 = func_0A90(var2, var3);
        var temp0 = var1;
        arg0 = temp0;
        var1 = 0x0e91;
        var2 = arg0;
        func_0E2A(var2);
        return arg0 + 0x40;
    }
    
    function func_0E9C(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 + 0x20;
        memory[temp0:temp0 + 0x20] = var0 - temp0;
        var var1 = 0x0eb5;
        var var2 = var0;
        return func_0E79(var2);
    }
    
    function func_0EBC(var arg0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x20] = 0x45524332303a20617070726f76652066726f6d20746865207a65726f20616464;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x7265737300000000000000000000000000000000000000000000000000000000;
    }
    
    function func_0F0B(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x0f18;
        var var2 = 0x24;
        var var3 = arg0;
        var1 = func_0A90(var2, var3);
        var temp0 = var1;
        arg0 = temp0;
        var1 = 0x0f23;
        var2 = arg0;
        func_0EBC(var2);
        return arg0 + 0x40;
    }
    
    function func_0F2E(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 + 0x20;
        memory[temp0:temp0 + 0x20] = var0 - temp0;
        var var1 = 0x0f47;
        var var2 = var0;
        return func_0F0B(var2);
    }
    
    function func_0F4E(var arg0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x20] = 0x45524332303a20617070726f766520746f20746865207a65726f206164647265;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x7373000000000000000000000000000000000000000000000000000000000000;
    }
    
    function func_0F9D(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x0faa;
        var var2 = 0x22;
        var var3 = arg0;
        var1 = func_0A90(var2, var3);
        var temp0 = var1;
        arg0 = temp0;
        var1 = 0x0fb5;
        var2 = arg0;
        func_0F4E(var2);
        return arg0 + 0x40;
    }
    
    function func_0FC0(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 + 0x20;
        memory[temp0:temp0 + 0x20] = var0 - temp0;
        var var1 = 0x0fd9;
        var var2 = var0;
        return func_0F9D(var2);
    }
    
    function func_0FE0(var arg0) {
        memory[arg0:arg0 + 0x20] = 0x45524332303a20696e73756666696369656e7420616c6c6f77616e6365000000;
    }
    
    function func_1009(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x1016;
        var var2 = 0x1d;
        var var3 = arg0;
        var1 = func_0A90(var2, var3);
        var temp0 = var1;
        arg0 = temp0;
        var1 = 0x1021;
        var2 = arg0;
        func_0FE0(var2);
        return arg0 + 0x20;
    }
    
    function func_102C(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 + 0x20;
        memory[temp0:temp0 + 0x20] = var0 - temp0;
        var var1 = 0x1045;
        var var2 = var0;
        return func_1009(var2);
    }
    
    function func_104C(var arg0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x20] = 0x45524332303a207472616e736665722066726f6d20746865207a65726f206164;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x6472657373000000000000000000000000000000000000000000000000000000;
    }
    
    function func_109B(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x10a8;
        var var2 = 0x25;
        var var3 = arg0;
        var1 = func_0A90(var2, var3);
        var temp0 = var1;
        arg0 = temp0;
        var1 = 0x10b3;
        var2 = arg0;
        func_104C(var2);
        return arg0 + 0x40;
    }
    
    function func_10BE(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 + 0x20;
        memory[temp0:temp0 + 0x20] = var0 - temp0;
        var var1 = 0x10d7;
        var var2 = var0;
        return func_109B(var2);
    }
    
    function func_10DE(var arg0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x20] = 0x45524332303a207472616e7366657220746f20746865207a65726f2061646472;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x6573730000000000000000000000000000000000000000000000000000000000;
    }
    
    function func_112D(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x113a;
        var var2 = 0x23;
        var var3 = arg0;
        var1 = func_0A90(var2, var3);
        var temp0 = var1;
        arg0 = temp0;
        var1 = 0x1145;
        var2 = arg0;
        func_10DE(var2);
        return arg0 + 0x40;
    }
    
    function func_1150(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 + 0x20;
        memory[temp0:temp0 + 0x20] = var0 - temp0;
        var var1 = 0x1169;
        var var2 = var0;
        return func_112D(var2);
    }
    
    function func_1170(var arg0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x20] = 0x45524332303a207472616e7366657220616d6f756e7420657863656564732062;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x616c616e63650000000000000000000000000000000000000000000000000000;
    }
    
    function func_11BF(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x11cc;
        var var2 = 0x26;
        var var3 = arg0;
        var1 = func_0A90(var2, var3);
        var temp0 = var1;
        arg0 = temp0;
        var1 = 0x11d7;
        var2 = arg0;
        func_1170(var2);
        return arg0 + 0x40;
    }
    
    function func_11E2(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 + 0x20;
        memory[temp0:temp0 + 0x20] = var0 - temp0;
        var var1 = 0x11fb;
        var var2 = var0;
        return func_11BF(var2);
    }
}

