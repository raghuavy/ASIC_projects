module counter_tb;
    reg clk, reset;
    wire [7:0] count;
    
    counter dut(.clk(clk), .reset(reset), .count(count));
    
    initial clk = 0;
    always #5 clk = ~clk;
    
    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0, counter_tb);
        
        reset = 1;
        #20 reset = 0;
        #200 $finish;
    end
    
    initial begin
        $monitor("Time=%0t reset=%b count=%d", $time, reset, count);
    end
endmodule
