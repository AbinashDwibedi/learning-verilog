module halfAdder (
    input x,y,
    output cout,sum
);
    assign cout = x&y;
    assign sum = x^y;
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