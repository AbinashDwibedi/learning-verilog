module decoder (
    input i1, i2, i3,
    output d0, d1, d2, d3, d4, d5, d6, d7
);
    assign d0 = (~i1 & ~i2 & ~i3);
    assign d1 = (~i1 & ~i2 &  i3);
    assign d2 = (~i1 &  i2 & ~i3);
    assign d3 = (~i1 &  i2 &  i3);
    assign d4 = ( i1 & ~i2 & ~i3);
    assign d5 = ( i1 & ~i2 &  i3);
    assign d6 = ( i1 &  i2 & ~i3);
    assign d7 = ( i1 &  i2 &  i3);
endmodule
