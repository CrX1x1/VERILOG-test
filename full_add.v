module adder(
    input  wire a,
    input  wire b,
    input  wire c,
    output wire [1:0] x
);
    wire andab = a & b;
    wire orab  = a | b;
    wire xorab = a ^ b;
    wire andbc = b & c;
    wire orbc  = b | c;
    wire xorbc = b ^ c;
    wire andca = c & a;
    wire orca  = c | a;
    wire xorca = c ^ a;
    wire r2b = c&(a^b);
    wire r2a = c^(a^b);
    wire cout = (c&(a^b))&r2b|a^b;

assign X = { cout, r2a };
endmodule