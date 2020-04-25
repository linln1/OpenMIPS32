module      mem(

        input   wire            rst,
        
        input   wire['RegAddrBus]   wd_i,
        input   wire            wreg_i,
        input   wire['RegBus]   wdata_i,
        
        output   wire['RegAddrBus]   wd_o,
        output   wire            wreg_o,
        output   wire['RegBus]   wdata_o
);

        always  @   (*)     begin
            if(rst == 'RstEnable)   begin
                    wd_o    <=  'NOPRegAddr;
                    wreg_o  <=  'WriteDiasble;
                    wdata_o <=  'ZeroWord;
            end  else if
                    wd_o    <=  wd_i;
                    wreg_o  <=  wreg_i;
                    wdata_o <=  wdata_i;
            end
        end
        
endmodule
        