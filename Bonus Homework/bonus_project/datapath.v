module datapath(
	input [15:0] cypher_input,
	input [3:0] four_bit_input,
	input [2:0] control_input,
	input read,
	input reset,
	input clock,
	output reg stop,
	output reg valid,
	output reg invalid,
	output reg final,
	output [63:0] additionresult,
	output reg pespese);
	/*
reg [63:0] reg_product;
reg [31:0] reg_multiplicand;
reg [31:0] reg_multiplier;
reg [5:0] reg_iteration;

wire [63:0] w_comp;
wire [63:0] w_adder;
wire [63:0] w_shift;
wire [63:0] w_product;
wire [63:0] w_alpha;
wire [5:0] w_iteration;
wire [5:0] w_itsum;

assign w_adder 	= {reg_product[63:32] + reg_multiplicand, reg_product[31:0]};
assign w_comp 		= {32'd0, multiplier};
assign w_shift 	= reg_product >> 1;
assign w_itsum 	= reg_iteration + 6'd1;
assign product		= reg_product;
assign stop 		= reg_iteration >= 32;


assign w_alpha 		= sl_add_shift ? w_shift : w_adder;
assign w_product 		= sl_input ? w_comp : w_alpha;
assign w_iteration 	= sl_iteration ? w_itsum : 6'd0;


always @ (posedge clock) begin
	if(wr_multiplicand)
		reg_multiplicand <= multiplicand;
	if(wr_product)
		reg_product <= w_product;
	if(wr_iteration)
		reg_iteration <= w_iteration;
end

*/




always@(posedge clock)
begin

	if(control_input==3'd1)
	begin
		if(four_bit_input == cypher_input[3:0])
		begin
			valid <= 1'b1;
			invalid <= 1'b0;
			pespese <= 1'b0;
		end
		
		else
		begin
			valid <= 1'b0;
			invalid <= 1'b1;
			pespese <= 1'b0;
		end
	end

	if(control_input==3'd2)
	begin
			if(four_bit_input == cypher_input[7:4])
			begin
				valid <= 1'b1;
				invalid <= 1'b0;
			pespese <= 1'b0;
			end
			
			else if (four_bit_input == cypher_input[3:0])
			begin
					valid <= 1'b0;
					pespese <= 1'b1;
			end
			
			
			else
			begin
			valid <= 1'b0;
			invalid <= 1'b1;
			pespese <= 1'b0;
			end
	end

	else if(control_input==3'd3)
		begin
			if(four_bit_input == cypher_input[11:8])
			begin
				valid <= 1'b1;
				invalid <= 1'b0;
				pespese <= 1'b0;
			end
			
			else if (four_bit_input == cypher_input[3:0])
			begin
					valid <= 1'b0;
					pespese <= 1'b1;
			end
			
			else
			begin
				valid <= 1'b0;
				invalid <= 1'b1;
				pespese <= 1'b0;
			end
		end

		else if(control_input==3'd4)
		begin
			if(four_bit_input == cypher_input[15:12])
			begin
				stop <= 1'b1;
				valid <= 1'b1;
				invalid <= 1'b0;
				pespese <= 1'b0;
				final <= 1'b1;
			end
			
			else if (four_bit_input == cypher_input[3:0])
			begin
					valid <= 1'b0;
					pespese <= 1'b1;
			end
			
			else
			begin
				pespese <= 1'b0;
			end
		end
		
		
		
end

reg [63:0] reg_addition;
wire [63:0] w_add;
wire [63:0] w_sum;
assign additionresult = reg_addition;

assign w_sum = four_bit_input + reg_addition;
assign w_add = read ? w_sum : w_add;

always @ (posedge read)
begin
	if(read)
		reg_addition <= w_add;
	if(reset)
		reg_addition <= four_bit_input;
end
	

/*wire [63:0] asdf;
assign asdf = old_reg;
assign sum_result = four_bit_input + old_reg;
wire [63:0] result;





always @ (posedge reset, posedge read) begin
	if(read)
		four_bit_input_reg <= four_bit_input;
		reg_add <= sum_result;
		//old_reg <= reg_add;
	if(reset)
		cypher <= cypher_input;
		reg_add <= four_bit_input;

		
end

always@(negedge read)
begin
		old_reg <= reg_add;

end*/


endmodule