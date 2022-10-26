contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
        var var0 = msg.value;
    
        if (var0) { revert(memory[0x00:0x00]); }
    
        if (msg.data.length < 0x04) { revert(memory[0x00:0x00]); }
    
        var0 = msg.data[0x00:0x20] >> 0xe0;
    
        if (var0 == 0x3c9d377d) {
            // Dispatch table entry for f5()
            var var1 = 0x0064;
            var1 = func_00F2();
            var temp0 = var1;
            var1 = 0x0071;
            var var2 = temp0;
            var var3 = memory[0x40:0x60];
            var1 = func_01E4(var2, var3);
            var temp1 = memory[0x40:0x60];
            return memory[temp1:temp1 + var1 - temp1];
        } else if (var0 == 0x9942ec6f) {
            // Dispatch table entry for f2()
            var1 = 0x0082;
            var1 = func_0105();
            var temp2 = var1;
            var1 = 0x008f;
            var3 = memory[0x40:0x60];
            var2 = temp2;
            var1 = func_01E4(var2, var3);
            var temp3 = memory[0x40:0x60];
            return memory[temp3:temp3 + var1 - temp3];
        } else if (var0 == 0xaaf05f3d) {
            // Dispatch table entry for f3()
            var1 = 0x00a0;
            var1 = func_0118();
            var temp4 = var1;
            var1 = 0x00ad;
            var2 = temp4;
            var3 = memory[0x40:0x60];
            var1 = func_01E4(var2, var3);
            var temp5 = memory[0x40:0x60];
            return memory[temp5:temp5 + var1 - temp5];
        } else if (var0 == 0xc27fc305) {
            // Dispatch table entry for f1()
            var1 = 0x00be;
            var1 = func_012B();
            var temp6 = var1;
            var1 = 0x00cb;
            var2 = temp6;
            var3 = memory[0x40:0x60];
            var1 = func_01E4(var2, var3);
            var temp7 = memory[0x40:0x60];
            return memory[temp7:temp7 + var1 - temp7];
        } else if (var0 == 0xc3f90202) {
            // Dispatch table entry for f4()
            var1 = 0x00dc;
            var1 = func_013E();
            var temp8 = var1;
            var1 = 0x00e9;
            var2 = temp8;
            var3 = memory[0x40:0x60];
            var1 = func_01E4(var2, var3);
            var temp9 = memory[0x40:0x60];
            return memory[temp9:temp9 + var1 - temp9];
        } else { revert(memory[0x00:0x00]); }
    }
    
    function func_00F2() returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x0100;
        var var2 = 0x4c4b40;
        var1 = func_0151(var2);
    
    label_0100:
        return var1;
    }
    
    function func_0105() returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x0113;
        var var2 = 0x1e8480;
        var1 = func_0151(var2);
    
    label_0113:
        return var1;
    }
    
    function func_0118() returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x0126;
        var var2 = 0x2dc6c0;
        var1 = func_0151(var2);
    
    label_0126:
        return var1;
    }
    
    function func_012B() returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x0139;
        var var2 = 0x0f4240;
        var1 = func_0151(var2);
    
    label_0139:
        return var1;
    }
    
    function func_013E() returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x014c;
        var var2 = 0x3d0900;
        var1 = func_0151(var2);
    
    label_014C:
        return var1;
    }
    
    function func_0151(var arg0) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 > 0x03) {
            var0 = arg0;
            var var1 = 0x00;
            var var2 = 0x01;
            var var3 = 0x0170;
            var var4 = 0x02;
            var var5 = var0;
            var3 = func_025D(var4, var5);
            var temp0 = var2;
            var2 = 0x017a;
            var temp1 = var3;
            var3 = temp0;
            var4 = temp1;
            var2 = func_028E(var3, var4);
            var1 = var2;
        
            if (var1 >= var0) {
            label_01B2:
                return var0;
            } else {
            label_0186:
                var0 = var1;
                var2 = 0x02;
                var3 = var0;
                var4 = 0x0197;
                var var6 = arg0;
                var5 = var3;
                var4 = func_025D(var5, var6);
                var temp2 = var3;
                var3 = 0x01a1;
                var temp3 = var4;
                var4 = temp2;
                var5 = temp3;
                var3 = func_028E(var4, var5);
                var temp4 = var2;
                var2 = 0x01ab;
                var temp5 = var3;
                var3 = temp4;
                var4 = temp5;
                var2 = func_025D(var3, var4);
                var1 = var2;
            
                if (var1 >= var0) { goto label_01B2; }
                else { goto label_0186; }
            }
        } else if (arg0 == 0x00) { return var0; }
        else { return 0x01; }
    }
    
    function func_01CB(var arg0) returns (var r0) { return arg0; }
    
    function func_01D5(var arg0, var arg1) {
        var var0 = 0x01de;
        var var1 = arg1;
        var0 = func_01CB(var1);
        memory[arg0:arg0 + 0x20] = var0;
    }
    
    function func_01E4(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        var var0 = temp0 + 0x20;
        var var1 = 0x01f9;
        var var2 = temp0;
        var var3 = arg0;
        func_01D5(var2, var3);
        return var0;
    }
    
    function func_025D(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x0268;
        var var2 = arg1;
        var1 = func_01CB(var2);
        arg1 = var1;
        var1 = 0x0273;
        var2 = arg0;
        var1 = func_01CB(var2);
        arg0 = var1;
    
        if (arg0) { return arg1 / arg0; }
    
        var1 = 0x0282;
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x12;
        revert(memory[0x00:0x24]);
    }
    
    function func_028E(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x0299;
        var var2 = arg1;
        var1 = func_01CB(var2);
        arg1 = var1;
        var1 = 0x02a4;
        var2 = arg0;
        var1 = func_01CB(var2);
        arg0 = var1;
    
        if (arg1 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff - arg0) { return arg1 + arg0; }
    
        var1 = 0x02d8;
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
}


