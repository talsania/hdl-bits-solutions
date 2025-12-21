module top_module ( input clk, input d, output q );
    wire x,y;
    my_dff instance1 (.clk(clk),.d(d),.q(x));
    my_dff instance2 (.clk(clk),.d(x),.q(y));
    my_dff instance3 (.clk(clk),.d(y),.q(q));
endmodule
