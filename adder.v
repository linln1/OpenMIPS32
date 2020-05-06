module adder(
    input wire [31:0] in_0,
    input wire [31:0] in_1,
    output reg [31:0] out
);

    always @(*) begin
        out = in_0 + in_1
    end
    
endmodule

