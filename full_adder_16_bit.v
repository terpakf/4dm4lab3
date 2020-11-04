//16 bit full adder made of 4 bit full adders
module full_adder_16_bit(
	input logic [15:0] num1, num2,
	input logic cin,
	output logic [15:0] sum,
	output logic cout
);

logic [3:0] a0,a1,a2,a3;
logic [3:0] b0,b1,b2,b3;
logic [3:0] sum0,sum1,sum2,sum3;

//instantiate 4 bit full adders
full_adder_4_bit adder0(
	.num1(a0),
	.num2(b0),
	.Cin(cin0),
	.sum(sum0),
	.Cout(cout0)
);

full_adder_4_bit adder1(
	.num1(a1),
	.num2(b1),
	.Cin(cin1),
	.sum(sum1),
	.Cout(cout1)
);

full_adder_4_bit adder2(
	.num1(a2),
	.num2(b2),
	.Cin(cin2),
	.sum(sum2),
	.Cout(cout2)
);

full_adder_4_bit adder3(
	.num1(a3),
	.num2(b3),
	.Cin(cin3),
	.sum(sum3),
	.Cout(cout3)
);




//link smaller adders together
assign {a3, a2, a1, a0} = num1;
assign {b3, b2, b1, b0} = num2;
assign sum = {sum3, sum2, sum1, sum0};

assign cin0 = cin;
assign cin1 = cout0;
assign cin2 = cout1;
assign cin3 = cout2;
assign cout = cout3;

endmodule