module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] x;
    wire k;
    wire [15:0] y,z;
    assign x=b^{32{sub}};
    add16 instance1 (.a(a[15:0]),.b(x[15:0]),.cin(sub),.cout(k),.sum(y));
    add16 instance2 (.a(a[31:16]),.b(x[31:16]),.cin(k),.cout(),.sum(z));
	assign sum={z,y};
endmodule
