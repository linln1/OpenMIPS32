<<<<<<< HEAD
module openmips_min_sopc(
    input   wire    clk,
    input   wire    rst
);

    wire['InstAddrBus]      inst_addr;
    wire['InstBus]          inst;
    wire                    rom_ce;
    
    openmips    openmips0(
        .clk(clk),
        .rst(rst),
        .rom_addr_o(inst_addr),
        .rom_data_i(inst),
        .rom_ce(rom_ce)
    );
    
    inst_rom    inst_rom0(
        .ce(rom_ce),
        .addr(inst_addr),
        .inst(inst)
    );
    
endmodule
=======
#最小SOPC
module openmips_min_sopc(
    input  wire     clk,
    input  wire     rst
);


    wire['InstAddrBus]  inst_addr;
    wire['InstBus]      inst;
    wire                rom_ce;
    
    
    openmips openmips0(
            .clk(clk),
            .rst(rst),
            .rom_addr_o(inst_addr),
            .rom_addr_i(inst);
            .rom_ce(rom_ce)
    );
    
    inst_rom inst_rom0(
            .ce(rom_ce),
            .addr(inst_addr),
            .inst(inst)
    );
    
endmodule

>>>>>>> c9fabfc18bb1e8d0ff7114831d0b5893bd39ac16
