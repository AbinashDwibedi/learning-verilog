module testMux4to1;
    reg [3:0] in;
    reg [1:0] sel;
    wire out;

    mux4to1 dut(.in(in),.sel(sel),.out(out));

    reg clk;
    reg rst;

    initial begin
        clk = 0;
        rst = 1;
        #20 rst = 0;
    end
    always begin
        #10 clk = ~clk;
    end
    reg [2:0] i;
    always @(posedge clk , posedge rst) begin
        if(rst)begin
            i <= 0;
        end
        else begin
            in <= $urandom%16;
            sel <=$urandom%4;
            i = i+1;
            if(i == 5)begin
                #10 $finish;
            end
        end
    end
    initial begin
        $monitor("%d: in=%b,sel=%b,out=%b",$time,in,sel,out);
        $dumpfile("waveform.vcd");
        $dumpvars();
    end
endmodule