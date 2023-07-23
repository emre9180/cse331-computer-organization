module controller(
	input	reset,
	input	CLK,
	input p0,
	output reg write,
	output reg shift,
	output reg add
);




localparam 	[2:0] S0 = 3'b000;
localparam 	[2:0] S1 = 3'b001;
localparam 	[2:0] S2 = 3'b010;
localparam 	[2:0] S3 = 3'b011;
localparam 	[2:0] S4 = 3'b100;

				
reg	[2:0] current_state = S0;

integer count = 0;


//State Register
/*always @(posedge CLK)
	begin
		current_state <= next_state;
	end*/

//Next State Logic
always @(posedge CLK)
	begin
	
		case(current_state)
		
				S0:
					begin
					if((p0==1))
						current_state <= S1;
					else
						current_state <= S2;
					end
				
				S1:
					begin
						current_state <= S2;
					end
					
				
				S2:
					begin
						current_state <= S3;
					end
					
				
				S3:
					begin
					count <= count +1;
					if(count<32)
						current_state <= S0;
					else
						current_state <= S4;
						
					end
					
			endcase
	end

//Outputs
always @(posedge CLK)
		begin
			case(current_state)
				
				S0:
					begin
					write = 1'b0;
					shift = 1'b0;
					add = 1'b0;
					end
				S1:
					begin
					write = 1'b1;
					shift = 1'b0;
					add = 1'b1;
					end
								
				
				S2:
					begin
					write = 1'b0;
					shift = 1'b1;
					add = 1'b0;
					end
					
				
				S3:
					begin	
					write = 1'b0;
					shift = 1'b0;
					add = 1'b0;
					end
					
			
			endcase
			
		end				


endmodule
