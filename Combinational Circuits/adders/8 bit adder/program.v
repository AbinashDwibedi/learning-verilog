module adder8Bit(cin,in1,in2,cout,sum);
    input [7:0] in1,in2;
    input cin;
    output [7:0] sum;
    output cout;
    assign {cout,sum} = in1+in2+cin;
endmodule
