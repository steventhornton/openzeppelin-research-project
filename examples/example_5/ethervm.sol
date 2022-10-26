contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
        var var0 = msg.value;
    
        if (var0) { revert(memory[0x00:0x00]); }
    
        if (msg.data.length < 0x04) { revert(memory[0x00:0x00]); }
    
        var0 = msg.data[0x00:0x20] >> 0xe0;
    
        if (var0 != 0xa0712d68) { revert(memory[0x00:0x00]); }
    
        var var1 = 0x43;
        var var2 = 0x3f;
        var var4 = 0x04;
        var var3 = var4 + (msg.data.length - var4);
        var2, var3 = func_009A(var3, var4);
        var1 = func_003F(var2, var3);
        var temp0 = var1;
        var1 = 0x4e;
        var2 = temp0;
        var3 = memory[0x40:0x60];
        var1 = func_00E0(var2, var3);
        var temp1 = memory[0x40:0x60];
        return memory[temp1:temp1 + var1 - temp1];
    }
    
    function func_003F(var arg0, var arg1) returns (var r0) { return arg0 + arg1; }
    
    function func_0069(var arg0) returns (var r0) { return arg0; }
    
    function func_0073(var arg0) {
        var var0 = 0x7a;
        var var1 = arg0;
        var0 = func_0069(var1);
    
        if (arg0 == var0) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_0087(var arg0, var arg1) returns (var r0) {
        var var0 = msg.data[arg1:arg1 + 0x20];
        var var1 = 0x94;
        var var2 = var0;
        func_0073(var2);
        return var0;
    }
    
    function func_009A(var arg0, var arg1) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
    
        if (arg0 - arg1 i>= 0x40) {
            var var2 = 0x00;
            var var3 = 0xba;
            var var4 = arg0;
            var var5 = arg1 + var2;
            var3 = func_0087(var4, var5);
            var0 = var3;
            var2 = 0x20;
            var3 = 0xc9;
            var4 = arg0;
            var5 = arg1 + var2;
            var3 = func_0087(var4, var5);
            arg0 = var3;
            r0 = var0;
            return r0, arg0;
        } else {
            var2 = 0xad;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_00D3(var arg0, var arg1) {
        var var0 = 0xda;
        var var1 = arg1;
        var0 = func_0069(var1);
        memory[arg0:arg0 + 0x20] = var0;
    }
    
    function func_00E0(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        var var0 = temp0 + 0x20;
        var var1 = 0xf3;
        var var2 = temp0;
        var var3 = arg0;
        func_00D3(var2, var3);
        return var0;
    }
}


