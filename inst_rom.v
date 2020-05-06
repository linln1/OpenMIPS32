<<<<<<< HEAD
module  inst_rom(

    input  wire         ce,
    input  wire['InstAddrBus]           addr,
    output  reg['InstBus]               inst,
    
);


    reg['InstBus]       inst_mem[0:'InstMemNum-1]
    
    initial  $readmemh  ("inst_rom.data",   inst_mem);
    
    
    always  @   (*) begin
        if  (ce == 'ChipDisable)    begin
            inst    <=  'ZeroWord;
        end else  begin
            inst    <=  inst_mem[addr['InstMemNumLog2+1:2]];
        end
    end    
    
endmodule

            
=======
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

>>>>>>> c9fabfc18bb1e8d0ff7114831d0b5893bd39ac16
