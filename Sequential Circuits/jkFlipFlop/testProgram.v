module testBench;
    reg j, k, clk;
    wire q;
    integer i;
    
    jk_flipflop jf(j, k, clk, q);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
        
        j = 0; k = 0;
        #12; j = 0; k = 1;
        #20; j = 1; k = 0;
        #20; j = 1; k = 1;
        #20; $finish;
    end
    
    always @(posedge clk) #1 $display("clk=%b, j=%b, k=%b, q=%b", clk, j, k, q);
endmodule