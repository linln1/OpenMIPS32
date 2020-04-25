module      mem_wb(
    
        input   wire            clk,
        input   wire            rst,
        
        input   wire['RegAddrBus]   mem_wd,
        input   wire            mem_wreg,
        input   wire['RegBus]   mem_wdata,
        
        output  wire['RegAddrBus]   wb_wd,
        output  wire                wb_wreg,
        output  wire['RegBus]       wb_wdata
);


        always  @   (*)     begin
            if  (rst == 'RstEnable) begin
                wb_wd <= 'NOPRegAddr;
                wb_wreg<=   'WriteDiasble;
                wb_wdata<=  'ZeroWord;
            end  else  if
                wb_wd <= mem_wd;
                wb_wreg <= mem_wreg;
                wb_wdata<= mem_wdata;
            end
        end
endmodule

                