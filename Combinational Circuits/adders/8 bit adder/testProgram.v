module test8BitAdder;
    reg [7:0]in1,in2;
    reg cin;
    wire [7:0]sum;
    wire cout;

    adder8Bit uut(.in1(in1),.in2(in2),.sum(sum),.cout(cout),.cin(cin));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,test8BitAdder);
        $monitor("in1=%b,in2=%b,cin=%b,cout=%b,sum=%b",in1,in2,cin,cout,sum);

        #50;in1 = 8'b01010000;in2 = 8'b11110000;cin = 0;
        #50;in1 = 8'b11110000;in2 = 8'b10101101;cin = 1;
        #50;in1 = 8'b01101101;in2 = 8'b10001100;cin = 0;
        #50;
        $finish;
    end

endmodule

//always assign values like this numberofbit'(type)value 
