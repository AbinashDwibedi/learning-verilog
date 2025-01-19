`timescale 1ns/1ps



module muxTest;

    reg [15:0] A;
    reg [3:0] B;
    wire C;

    mux16to1 M (A, B, C);

    initial begin
        $dumpfile("some.vcd");
        $dumpvars(0, muxTest);
        $monitor($time, " A = %h , B = %h , C = %b", A, B, C);

        A = 16'hABCD; B = 4'h0; // Initialize values
        #50 B = 4'h1;
        #50 B = 4'h4;
        #50 B = 4'hF; // Test the last bit
        #50 $finish;
    end

endmodule
