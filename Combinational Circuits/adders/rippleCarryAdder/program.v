module halfAdder (
    input x,y,
    output cout,sum
);
    // assign cout = x&y;
    and (cout,x,y);
    // assign sum = x^y;
    xor (sum,x,y);
endmodule

module fullAdder (
    input x,y,cin,
    output sum,cout
);
    wire c1,s1,c2;
    halfAdder h1(x,y,c1,s1);
    halfAdder h2(s1,cin,c2,sum);
    assign cout = c1|c2;
endmodule

module rca(
    input [3:0]a,b,
    input cin,
    output [3:0]sum,
    output cout
);
    wire c1,c2,c3;
    fullAdder fa1(a[0],b[0],cin,sum[0],c1);
    fullAdder fa2(a[1],b[1],c1,sum[1],c2);
    fullAdder fa3(a[2],b[2],c2,sum[2],c3);
    fullAdder fa4(a[3],b[3],c3,sum[3],cout);

endmodule