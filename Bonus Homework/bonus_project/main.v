module main(
	input [15:0] cypher,
	input [3:0] four_bit_input,
	input read,
	input clock,
	input reset,
	output find,
	output [63:0] additionresult);


wire [2:0] control_input;
wire stop;
wire valid;
wire pespese;
wire final;
wire invalid;






	
datapath d0(
	.cypher_input(cypher),
	.four_bit_input(four_bit_input),
	.control_input(control_input),
	.read(read),
	.reset(reset),
	.clock(clock),
	.stop(stop),
	.valid(valid),
	.invalid(invalid),
	.final(final),
	.additionresult(additionresult),
	.pespese(pespese)
	
	
	
);
	
control c0(
	control_input,
	stop,
	clock,
	reset,
	valid,
	invalid,
	read,
	find,
	pespese,
	final
);
	
endmodule