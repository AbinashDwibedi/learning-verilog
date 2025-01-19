// module simpleCounter(clk,rst,count);
//     input clk,rst;
//     output reg [31:0]count;

//     always @(posedge clk or posedge rst) begin
//         if(rst) count <= 32'b0;
//         else count <= count + 1;
//     end
// endmodule

module simpleCounter(clk,rst,count);
    input clk,rst;
    output reg [31:0] count;
    //sequencial logic
    always @(posedge clk or posedge rst) begin
        if(rst) count <= 32'b0;
        else count <= count + 1;
    end
endmodule

//when we use always inside of it we always have to use a register datatype to assign values if net type variable is used then some error will occured
//in always we always have to use <= operator instead of = operator
