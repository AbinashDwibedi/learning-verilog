module priorityEncoder (
    input p0,p1,p2,p3,p4,p5,p6,p7,
    output o1,o2,o3
);
    assign o1 = p4|p5|p6|p7;
    assign o2 = (p2&~p5&~p4)|(p3&~p4&~p5)|p6|p7;
    assign o3 = (p1&~p2&~p4&~p6)|(p3&~p4&~p6)|(p5&~p6)|p7;
endmodule