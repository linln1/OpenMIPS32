module  regfile(
    input wire      rst,
    input wire      clk,
    input wire['RegAddrBus]      waddr,
    input wire['RegBus]     wdata,
    input wire           we,
    
    input wire['RegAddrBus]      raddr1,
    input wire           re1,
    output reg['RegBus]    rdata1,
    
    
    output reg['RegBus]    rdata2,
    input  wire['RegAddrBus]    raddr2,
    input wire           re2
);

reg['RegBus]    regs[0:'RegNum-1];


/******************写操作******************/

    always  @   (posedge clk)   begin
        if (rst == 'RstDisable) begin
            if  ((we == 'WriteEnable)  &&  (waddr  != 'RegNumLog2'h0))  begin
                regs[waddr] <= data
            end
        end
    end
    
    
    always @    (posedge clk)   begin
        if (rst == 'RstEnable)  begin
            raddr1 <= 'ZeroWord;
        end  else  if (raddr1  ==  'RegNumLog2'h0)  begin
            rdata1 <= 'ZeroWord;
        end  else  if ((raddr1 == waddr) && (we == 'WriteEnable)
                        &&  (rel == 'ReadEnable)) begin
            rdata1 <= wdata;
            
        end  else  if  (re1 == 'ReadEnable)  begin
            rdata1 <= regs[raddr1];
        end  else  begin
            rdata1 <= 'ZeroWord;
        end
    end
    
    
    always @    (*)     begin
        if(rst == 'RstEnable)   begin
            rdata2 <= 'ZeroWord;
        end  else  if (raddr2 == 'RegNumLog2'h0)  begin
            rdata2 <= 'ZeroWord;
        end  else  if ((raddr2 == waddr) && (we == 'WriteEnable) 
                        &&  (re2 == 'ReadEnable))  begin
            rdata2 <= wdata;
        
                end  else  if  (re1 == 'ReadEnable)  begin
            rdata2 <= regs[raddr2];
        end  else  begin
            rdata2 <= 'ZeroWord;
        end
    end


endmodule


