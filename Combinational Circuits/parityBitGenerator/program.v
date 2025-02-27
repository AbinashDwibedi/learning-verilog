module parityBitGenerator (
    input [3:0]a,
    output pBit
);
   assign pBit = a[3] ^ a[2] ^ a[1] ^ a[0];
endmodule