module halfAdder (
    input x,y,
    output cout,sum
);
    assign cout = x&y;
    assign sum = x^y;
endmodule