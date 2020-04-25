module inst_rom(

    input wire                  ce,
    input wire['InstAddrBus]    addr,
    output reg['InstAddrBus]    inst

);

    reg['InstBus]   inst_mem[0:'InstMenNum-1];
    
    
    initial $readmemh("inst_rom.data", inst_mem);
    
    
    always @ (*) begin
        if(ce == 'ChipDisable) begin
            inst <= 'Zeroword;
        end else begin
            inst <= inst_mem[addr['InstMemNumLog2+1:2]];
        end
    end
    
    
endmodule

