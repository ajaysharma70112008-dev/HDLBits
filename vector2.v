module top_module( 
    input [31:0] in,
    output [31:0] out );//

    wire [7:0] a;
    wire [7:0] b;
    wire [7:0] c;
    wire [7:0] d;
    assign a = in[7:0];
    assign b = in[15:8];
    assign c = in[23:16];
    assign d = in[31:24];
    assign out = {a,b,c,d};

endmodule
