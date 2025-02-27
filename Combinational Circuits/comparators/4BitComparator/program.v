module  program(
    input [3:0]a,b,
    output agb,asb,aeb
);
    wire [3:0]x;
    assign x[3] = ~(a[3]^b[3]);
    assign x[2] = ~(a[2]^b[2]);
    assign x[1] = ~(a[1]^b[1]);
    assign x[0] = ~(a[0]^b[0]);

    assign aeb = x[3]&x[2]&x[1]&x[0];
    assign agb = (a[3]&~b[3]) | (x[3]&a[2]&~b[2]) | (x[3]&x[2]&a[1]&~b[1]) | (x[3]&x[2]&x[1]&a[0]&~b[0]);
    assign asb = (~a[3]&b[3]) | (x[3]&~a[2]&b[2]) | (x[3]&x[2]&~a[1]&b[1]) | (x[3]&x[2]&x[1]&~a[0]&b[0]);
endmodule