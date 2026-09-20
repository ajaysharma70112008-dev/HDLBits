module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire [15:0] a_lower;
    wire [15:0] b_lower;
    wire [15:0] a_upper;
    wire [15:0] b_upper;

    wire [15:0] sum_lower;
    wire [15:0] sum_upper;

    wire cout;
    wire unused_cout;

    assign a_lower = a[15:0];
    assign b_lower = b[15:0];

    assign a_upper = a[31:16];
    assign b_upper = b[31:16];

    add16 add16_lower(a_lower, b_lower, 1'b0, sum_lower, cout);

    add16 add16_upper(a_upper, b_upper, cout, sum_upper, unused_cout);

    assign sum[15:0] = sum_lower;
    assign sum[31:16] = sum_upper;

endmodule
