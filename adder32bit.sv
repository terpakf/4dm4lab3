module adder32bit (
	input logic [31:0] x, y,
	input logic Cin,
	output logic [31:0] sum,
	output logic Cout
);

logic [15:0] a0, a1;
logic [15:0] b0, b1;
logic [15:0] sum0, sum1;

//instantiate 16 bit adders
full_adder_16_bit adder0(
	.num1(a0),
	.num2(b0),
	.cin(cin0),
	.sum(sum0),
	.cout(cout0)
);

full_adder_16_bit adder1(
	.num1(a1),
	.num2(b1),
	.cin(cin1),
	.sum(sum1),
	.cout(cout1)
);

//link the adders together to create a larger one
assign {a1, a0} = x;
assign {b1, b0} = y;
assign sum = {sum1,sum0};

assign cin0 = Cin;
assign cin1 = cout0;
assign Cout = cout1;

endmodule