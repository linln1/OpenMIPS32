//VCD文件的输出使用$dumpfile $dumpvars来实现

'timescale 1ns/1ps

'include "regfile.h"

module regfile_test;

    reg         clk;
    reg         reset_;
    
    reg     ['AddrBus]  addr;
    reg     ['DataBus]  d_in;
    reg                 we_;
    wire    ['DataBus]  d_out;
    
    integer             i;
    
    parameter           STEP = 100.0000;
    
    
    
    always  #(STEP / 2) begin
        clk <= ~clk;
    end
    
    
    regfile regfile(
        .clk    (clk),
        .reset_ (reset_),
        
        .addr   (addr),
        .d_in   (d_in),
        .we_    (we_),
        .d_out  (d_out)
    );
    
    
    initial begin
        # 0 begin
            clk <= 'HIGH;
            reset_ <= 'ENABLE_;
            addr    <= {'ADDR_W{1'b0}};
            d_in    <= {'DATA_W{1'b0}};
            we_     <= 'DISABLE_;
        end
        #   (STEP * 3 / 4)
        #   STEP begin
            reset_ <= 'DISABLE_;
        end
        #   STEP begin
            for (i = 0; i <'DATA_D; i = i + 1) begin
                #STEP begin
                    addr    <= i;
                    d_in    <= i;
                    we_     <= 'ENABLE_;
                end
                #STEP begin
                    addr    <= {'ADDR_W{1'b0}};
                    d_in    <= {'DATA_W{1'b0}};
                    we_     <= 'DISABLE_;
                    if (d_out == i) begin
                        $display($time, " ff [%d] Read/Write Check OK !", i);
                    end else begin
                        $display($time, " ff [%d] Read/Write Check NG !", i);
                    end
                end
            end
        end
        # STEP begin
            $finish;
        end
    end
    
    
    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0,test);
    end
    
endmodule

     


