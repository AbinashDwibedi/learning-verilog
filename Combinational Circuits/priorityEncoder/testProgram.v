module testPriorityEncoder;
    reg [7:0]p;
    wire [2:0]o;
    priorityEncoder dut(p[7],p[6],p[5],p[4],p[3],p[2],p[1],p[0],o[2],o[1],o[0]);

    reg clk;
    reg rst;

    initial begin
        clk = 0;
        rst = 1;
        #20 rst =0;
    end
    always begin
        #10 clk = ~clk;
    end
    reg [7:0]i ;
    always @(posedge clk ,posedge rst) begin
        if(rst)begin
            i <=0;
        end
        else
        begin
            p <= $random%256;
            i <= i+1;

            if(i == 10)begin
                #10 $finish;
            end

        end
    end
        initial begin
            $monitor("%d: p:%b,o:%b",$time,p,o);
            $dumpfile("waveform.vcd");
            $dumpvars();
        end
endmodule