module testNotGate;
    reg x;
    wire y;
    notGate uut(.x(x),.y(y));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,testNotGate);
        $display(" not gate ");
        $display("x  y");

        x = 0;#10;
        $display("%b  %b",x,y);

        x = 1;#10;
        $display("%b  %b",x,y);

        $finish;
    end
endmodule