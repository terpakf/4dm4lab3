module alu(
	input logic [31:0] a, b,
	input logic [2:0] f,
	output logic [31:0] y,
	output logic zero
);

//intermediate signals
logic [31:0] bb;

//signals for adder
logic [31:0] S;
logic add_Cout;

//final results to be chosen by the final mux
logic [31:0] AND_result, OR_result, SLT_result;

adder32bit adder(
	.x(a),
	.y(bb),
	.Cin(f[2]),
	.sum(S),
	.Cout(add_Cout)
);

//assign intermediate signals
assign bb = f[2] ? ~b : b;

//assign possible results
assign AND_result = a & bb;
assign OR_result = a | bb;
assign SLT_result = {31'd0, S[31]}; 

//choose the correct results
always_comb begin
	case (f[1:0])
		2'b00   : y = AND_result;
		2'b01   : y = OR_result;
		2'b10   : y = S;
		default : y = SLT_result;
	endcase
end

assign zero = (y == 32'd0);

endmodule