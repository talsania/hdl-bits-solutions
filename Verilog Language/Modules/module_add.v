module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] k,l,m,n;
    assign k=a[15:0];
    assign l=b[15:0];
    assign m=a[31:16];
    assign n=b[31:16];
    wire [15:0] x,y;
    wire z;
    add16 instance1 (.a(k),.b(l),.cin(0),.cout(z),.sum(x));
    add16 instance2 (.a(m),.b(n),.cin(z),.cout(),.sum(y));
    assign sum[31:16]=y; assign sum[15:0]=x;
endmodule
