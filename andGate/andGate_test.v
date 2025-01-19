module and_gate_tb;
    reg a, b;
    wire y;

    and_gate uut (a, b, y); // Instantiate the module

    initial begin
        $dumpfile("example.vcd"); // VCD file for waveform
        $dumpvars(0, and_gate_tb);

        // Test cases
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule

