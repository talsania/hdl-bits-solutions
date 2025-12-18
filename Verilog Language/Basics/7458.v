module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    wire k,l,m,n;
	assign k = p1a&p1b&p1c;
    assign l = p1d&p1e&p1f;
    assign m = p2a&p2b;
    assign n = p2c&p2d;
	assign p1y=k|l; assign p2y=m|n;
endmodule
