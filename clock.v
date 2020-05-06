always #10 begin
    clk <= ~clk
end

initial begin
    #0 beign
        clk <= 1'b0;
    end

end
