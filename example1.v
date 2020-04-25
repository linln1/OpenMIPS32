module bin_decoder(
    input wire [1:0] in,
    output reg [3:0] out
);

    always @(*) begin
        case (in)
                2'b00 : out = 4'b0001;
                2'b01 : out = 4'b0010;
                2'b10 : out = 4'b0100;
              //default: out = 4'bxxxx;
        endcase
    end
endmodule

// always @(<edge> <signal> [or...]) begin
// end

module ff (
    input wire clk,
    input wire reset_,
    input wire d_in,
    output reg d_out
    );
    
    
    always @(posedge clk or negedge reset_) begin
        if (reset_ == 1'b0) begin
            d_out <= 1'b0;
        end else begin
            d_out <= d_in;
        end
    end
endmodule


