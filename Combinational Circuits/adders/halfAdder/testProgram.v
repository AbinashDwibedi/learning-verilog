module testHalfAdder;
    reg x,y;
    wire cout,sum;
    halfAdder dut(x,y,cout,sum);
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
            x=$random%2;
            y=$random%2;
            o <= o+1;

            if(o == 5)begin
                #10 $finish;
            end

        end
    end
        initial begin
            $monitor("%d: x=%b,y=%b,sum=%b,cout=%b",$time,x,y,sum,cout);
            $dumpfile("waveform.vcd");
            $dumpvars();
        end
endmodule