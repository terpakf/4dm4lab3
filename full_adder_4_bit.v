//4 bit full adder built from four 1 bit full adders
module full_adder_4_bit(
	input logic [3:0] num1, num2,
	input logic Cin,
	output logic [3:0] sum,
	output logic Cout
);


//instantiate four 1 bit full adders
full_adder_1_bit digit0 (
	.A(a0),
	.B(b0),
	.Cin(Cin0),
	.S(sum0),
	.Cout(cout0)
);

full_adder_1_bit digit1 (
	.A(a1),
	.B(b1),
	.Cin(Cin1),
	.S(sum1),
	.Cout(cout1)
);

full_adder_1_bit digit2 (
	.A(a2),
	.B(b2),
	.Cin(Cin2),
	.S(sum2),
	.Cout(cout2)
);

full_adder_1_bit digit3 (
	.A(a3),
	.B(b3),
	.Cin(Cin3),
	.S(sum3),
	.Cout(cout3)
);

assign {a3, a2, a1, a0} = num1;
assign {b3, b2, b1, b0} = num2;
assign sum = {sum3, sum2, sum1, sum0};

assign Cin0 = Cin;
assign Cin1 = cout0;
assign Cin2 = cout1;
assign Cin3 = cout2;

assign Cout = cout3;
endmodule