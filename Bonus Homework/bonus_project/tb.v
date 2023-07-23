module tb();

reg [15:0] cypher;
reg [3:0] four_bit_input;

reg reset = 1'b0;
reg read;
wire find;
wire [63:0] additionresult;

wire temp;
assign temp = 1'b0;
reg clock = 1'b0;


main m0(
	cypher, 
	 four_bit_input,
	read,
	clock, 
	reset,
	find,
	additionresult);
	
always begin
	#1
	clock = ~clock;
end

initial begin
	#60
	read = 1'b0;
	reset = 1'b1;
	
	#60
	reset = 1'b0;
	
	#60
	read = 1'b1;
	reset = 1'b1;
	cypher = 16'b0010011000000001;
	four_bit_input = 4'b0000;
	
	
	#60
	read = 1'b0;
	
	#60
	reset = 1'b0;
	read = 1'b1;
	four_bit_input = 4'b0001;
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0011;
	
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0000;
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0011;
	
	
	
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0100;
	
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0001;
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0000;
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0010;
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0001;
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0001;
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0000;
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0110;
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0010;
	
	
		
	
	/*
	#60
	read = 1'b0;
	reset = 1'b1;
	
	#60
	reset = 1'b0;
	

	#60
	read = 1'b1;
	reset = 1'b1;
	cypher = 16'b0100001100100001;
	four_bit_input = 4'b0000;
	
	
	#60
	read = 1'b0;
	
	#60
	reset = 1'b0;
	read = 1'b1;
	four_bit_input = 4'b0010;
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b1111;
	
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0010;
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0011;
	
	
	
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0101;
	
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b1001;
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0000;
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0010;
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0001;
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0001;
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0010;
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0011;
	
	#60
	read = 1'b0;
	
	#60
	read = 1'b1;
	four_bit_input = 4'b0100;*/


	
end 

endmodule