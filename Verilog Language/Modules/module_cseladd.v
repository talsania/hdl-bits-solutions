module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] x,y,z;
    wire k;
    add16 instance1 (.a(a[15:0]),.b(b[15:0]),.cin(0),.cout(k),.sum(x));
    add16 instance2 (.a(a[31:16]),.b(b[31:16]),.cin(0),.cout(),.sum(y));
    add16 instance3 (.a(a[31:16]),.b(b[31:16]),.cin(1),.cout(),.sum(z));
    assign sum[15:0]=x;
    assign sum[31:16]=k?z:y;
endmodule
