module testSimpleCounter;
    reg clk,rst;
    wire [31:0]count;

    simpleCounter uut(.clk(clk),.rst(rst),.count(count));

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,testSimpleCounter);
        $monitor("clk = %b, rst = %b, count = %b",clk,rst,count);
        rst=1;
        #30;
        rst=0;
        #100;
        #10; $finish;
    end
endmodule
