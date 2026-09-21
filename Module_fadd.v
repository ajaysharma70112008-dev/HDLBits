module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire carry;

    wire unused_carry;

    add16 lower(
        a[15:0],
        b[15:0],
        1'b0,
        sum[15:0],
        carry
    );

    add16 upper(
        a[31:16],
        b[31:16],
        carry,
        sum[31:16],
        unused_carry
    );

endmodule


module add1(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

    wire x1;
    wire x2;
    wire x3;

    assign x1 = a ^ b;
    assign sum = x1 ^ cin;

    assign x2 = a & b;
    assign x3 = x1 & cin;
    assign cout = x2 | x3;

endmodule
