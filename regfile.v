'include "regfile.h"

module regfile(
        input wire          clk,
        input wire          reset_,
        
        input wire    ['AddrBus]      addr,
        input wire    ['DataBus]      d_in,
        input wire                    we_,
        output wire     ['DataBus]  d_out,
);


    reg ['DataBus]          ff ['DATA_D-1:0];
    integer                 i;


    assign d_out = ff[addr];


    always @(posedge clk or negedge reset_) begin
        if (reset_ == 'ENABLE_) begin
            for (i = 0; i < 'DATA_D; i = i + 1) begin
                ff[i]   <=  #1 {'DATA_W{1'b0}};
            end
            
        end else begin
            if (we_ == 'ENABLE_) begin
                ff[addr] <= #1 d_in;
            end
        end
    end

end module
