module comparator4Bit(
    input [3:0] a, b,
    output agb, asb, aeb
);
    wire [3:0] x;

    assign x[3] = ~(a[3] ^ b[3]);
    assign x[2] = ~(a[2] ^ b[2]);
    assign x[1] = ~(a[1] ^ b[1]);
    assign x[0] = ~(a[0] ^ b[0]);

    assign aeb = x[3] & x[2] & x[1] & x[0];
    assign agb = (a[3] & ~b[3]) | (x[3] & a[2] & ~b[2]) | (x[3] & x[2] & a[1] & ~b[1]) | (x[3] & x[2] & x[1] & a[0] & ~b[0]);
    assign asb = (~a[3] & b[3]) | (x[3] & ~a[2] & b[2]) | (x[3] & x[2] & ~a[1] & b[1]) | (x[3] & x[2] & x[1] & ~a[0] & b[0]);
endmodule

module comparator16Bit (
    input [15:0] a, b,
    output agb, asb, aeb
);
    wire [2:0] t1, t2, t3, t4;

    comparator4Bit bc1(a[15:12], b[15:12], t1[2], t1[1], t1[0]);
    comparator4Bit bc2(a[11:8], b[11:8], t2[2], t2[1], t2[0]);
    comparator4Bit bc3(a[7:4], b[7:4], t3[2], t3[1], t3[0]);
    comparator4Bit bc4(a[3:0], b[3:0], t4[2], t4[1], t4[0]);

    assign aeb = t1[0] & t2[0] & t3[0] & t4[0];
    assign agb = t1[2] | (t1[0] & t2[2]) | (t1[0] & t2[0] & t3[2]) | (t1[0] & t2[0] & t3[0] & t4[2]);
    assign asb = t1[1] | (t1[0] & t2[1]) | (t1[0] & t2[0] & t3[1]) | (t1[0] & t2[0] & t3[0] & t4[1]);
endmodule
