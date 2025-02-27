module testProgram;
    reg [3:0] a,b;
    wire agb,asb,aeb;

    program dut(.a(a),.b(b),.aeb(aeb),.agb(agb),.asb(asb));

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
    reg [3:0] i ;
    always @(posedge clk ,posedge rst) begin
        if(rst)begin
            i <=0;
        end
        else
        begin
            a<=$random%16;
            b<=$random%16;

            i <= i+1;

            if(i == 10)begin
                #10 $finish;
            end

        end
    end
        initial begin
            $monitor("%d: a=%b, b=%b, agb=%b, asb=%b, aeb=%b",$time,a,b,agb,asb,aeb);
            $dumpfile("waveform.vcd");
            $dumpvars();
        end
endmodule