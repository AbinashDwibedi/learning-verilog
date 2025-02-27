module testRca;
    reg [3:0]a,b;
    reg cin;
    wire cout;
    wire [3:0]sum;
    rca dut(a,b,cin,sum,cout);
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
            a=$random%16;
            b=$random%16;
            cin=$random%2;
            o <= o+1;

            if(o == 5)begin
                #10 $finish;
            end

        end
    end
        initial begin
            $monitor("%d: a=%b,b=%b,cin=%b,sum=%b,cout=%b",$time,a,b,cin,sum,cout);
            $dumpfile("waveform.vcd");
            $dumpvars();
        end
endmodule