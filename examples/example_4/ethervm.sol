contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
        var var0 = msg.value;
    
        if (var0) { revert(memory[0x00:0x00]); }
    
        if (msg.data.length < 0x04) { revert(memory[0x00:0x00]); }
    
        var0 = msg.data[0x00:0x20] >> 0xe0;
    
        if (var0 != 0x8a4068dd) { revert(memory[0x00:0x00]); }
    
        var var1 = 0x33;
        func_0035();
        stop();
    }
    
    function func_0035() {
        var var0 = msg.sender;
        var var1 = address(this);
        var var2 = 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef;
        var var3 = 0x90;
        var var5 = memory[0x40:0x60];
        var var4 = address(this).balance;
        var3 = func_00B1(var4, var5);
        var temp0 = memory[0x40:0x60];
        log(memory[temp0:temp0 + var3 - temp0], [stack[-2], stack[-3], stack[-4]]);
    }
    
    function func_009A(var arg0) returns (var r0) { return arg0; }
    
    function func_00A4(var arg0, var arg1) {
        var var0 = 0xab;
        var var1 = arg1;
        var0 = func_009A(var1);
        memory[arg0:arg0 + 0x20] = var0;
    }
    
    function func_00B1(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        var var0 = temp0 + 0x20;
        var var1 = 0xc4;
        var var2 = temp0;
        var var3 = arg0;
        func_00A4(var2, var3);
        return var0;
    }
}


