module      mem(

        input   wire            rst,
        
        input   wire['RegAddrBus]   wd_i,
        input   wire            wreg_i,
        input   wire['RegBus]   wdata_i,
        input   wire['RegBus]   hi_i,
        input   wire['RegBus]   lo_i,
        input   wire            whilo_i,
        
        output   wire['RegAddrBus]   wd_o,
        output   wire            wreg_o,
        output   wire['RegBus]   wdata_o,
        output  reg['RegBus]       hi_o,
        output  reg['RegBus]       lo_o,
        output  reg                whilo_o
);

        always  @   (*)     begin
            if(rst == 'RstEnable)   begin
                    wd_o    <=  'NOPRegAddr;
                    wreg_o  <=  'WriteDiasble;
                    wdata_o <=  'ZeroWord;
                    hi_o   <= 'ZeroWord;
                    lo_o   <= 'ZeroWord;
                    whilo_o   <= 'WriteDisable;
            end  else if
                    wd_o    <=  wd_i;
                    wreg_o  <=  wreg_i;
                    wdata_o <=  wdata_i;
                    hi_o   <=  hi_i;
                    lo_o   <=  lo_i;
                    whilo_o   <= whilo_i;
            end
        end
        
endmodule
        