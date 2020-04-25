'timescale  1ns/1ps


module test_bench;

        reg     adder01_in_0;
        reg     adder01_in_1;
        wire    adder01_out;
        
        adder  adder01  (
            .in_0  (adder01_in_0),
            .in_1  (adder01_in_1),
            .out   (adder01_out)
        );
        
        
        initial begin
        
        end
        
endmodule;