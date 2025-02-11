`include "add8.v"

module sub8(
    input  wire [7:0] a,
    input  wire [7:0] b,
    output wire [8:0] x
);
    wire [7:0] bcomplement = ~b + 8'00000001
    


endmodule
