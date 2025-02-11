`include "full_add.v"

module add8(
    input  wire [7:0] a,
    input  wire [7:0] b,
    output wire [8:0] x
);
    wire [7:0] carry;

    adder u0 (.a(a[0]), .b(b[0]), .c(1'b0), .x({carry[0], x[0]}));
    adder u1 (.a(a[1]), .b(b[1]), .c(carry[0]), .x({carry[1], x[1]}));
    adder u2 (.a(a[2]), .b(b[2]), .c(carry[1]), .x({carry[2], x[2]}));
    adder u3 (.a(a[3]), .b(b[3]), .c(carry[2]), .x({carry[3], x[3]}));
    adder u4 (.a(a[4]), .b(b[4]), .c(carry[3]), .x({carry[4], x[4]}));
    adder u5 (.a(a[5]), .b(b[5]), .c(carry[4]), .x({carry[5], x[5]}));
    adder u6 (.a(a[6]), .b(b[6]), .c(carry[5]), .x({carry[6], x[6]}));
    adder u7 (.a(a[7]), .b(b[7]), .c(carry[6]), .x({carry[7], x[7]}));

    assign x[8] = carry[7];
add8 sub8(
    .a(a),
    .b(bcomplement)
    .x(x)
)
endmodule