module top_module ( input clk, input d, output q );
    wire x,y;
    my_dff ex1(clk,d,x);
    my_dff ex2(clk,x,y);
    my_dff ex3(clk,y,q);

endmodule
