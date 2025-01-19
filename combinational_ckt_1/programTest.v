module test_ckt;
    reg a,b,c,d;
    wire f;

    ckt uut (.a(a),.b(b),.c(c),.d(d),.f(f));
    initial begin
            $dumpfile("wave.vcd");
            $dumpvars(0,test_ckt);
            $monitor("a = %b, b = %b, c = %b, d = %b, f = %b",a,b,c,d,f);
            #10; a = 0; b = 0; c = 0; d = 0;
            #10; a = 0; b = 0; c = 0; d = 1;
            #10; a = 0; b = 0; c = 1; d = 0;
            #10; a = 0; b = 0; c = 1; d = 1;
            #10; a = 0; b = 1; c = 0; d = 0;
            #10; a = 0; b = 1; c = 0; d = 1;
            #10; a = 0; b = 1; c = 1; d = 0;
            #10; a = 0; b = 1; c = 1; d = 1;
            #10; a = 1; b = 0; c = 0; d = 0;
            #10; a = 1; b = 0; c = 0; d = 1;
            #10; a = 1; b = 0; c = 1; d = 0;
            #10; a = 1; b = 0; c = 1; d = 1;
            #10; a = 1; b = 1; c = 0; d = 0;
            #10; a = 1; b = 1; c = 0; d = 1;
            #10; a = 1; b = 1; c = 1; d = 0;
            #10; a = 1; b = 1; c = 1; d = 1;
            #10; $finish;
    end
endmodule