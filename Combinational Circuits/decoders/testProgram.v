module testDecoder;
    wire [7:0]d;
    reg [2:0]i;
    decoder dut(i[2],i[1],i[0],d[7],d[6],d[5],d[4],d[3],d[2],d[1],d[0]);

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
    reg [7:0]o ;
    always @(posedge clk ,posedge rst) begin
        if(rst)begin
            o <=0;
        end
        else
        begin
            i <= $random%8;
            o <= o+1;

            if(o == 10)begin
                #10 $finish;
            end

        end
    end
        initial begin
            $monitor("%d: i:%b,d:%b",$time,i,d);
            $dumpfile("waveform.vcd");
            $dumpvars();
        end
endmodule