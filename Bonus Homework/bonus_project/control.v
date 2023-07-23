module control(
	output reg [2:0] which_part,
	input stop,
	input clock,
	input reset,
	input valid,
	input invalid,
	input read,
	output reg find,
	input pespese,
	input final);
	
reg [2:0] current_state, next_state;



localparam	INIT 		= 3'd0,
				FIRST		= 3'd1,
				SECOND 	= 3'd2,
				THIRD		= 3'd3,
				FOURTH	= 3'd4,
				FINAL 	= 3'd5;
	
//state register
always @ (posedge clock) begin
	if(reset)
		current_state <= FIRST;
	else 
		current_state <= next_state;
end
	
//next state logic
always @ (posedge read, posedge final) begin
	case (current_state)
		
		INIT: begin
		if(reset)
			next_state <= FIRST;
		else begin
			next_state <= INIT;
		end
		end
		FIRST: begin
			if(stop)
				next_state <= FINAL;
				
			else if(valid )
				begin
					next_state <= SECOND;
				end
				
			else
				begin
					next_state <= FIRST;
				end
			
		end
		
		SECOND: begin
			if(stop)
				next_state <= FINAL;
		
				
			else if(valid == 1'b1 && pespese != 1'b1)
				begin
					next_state <= THIRD;
				end
				
			else
				begin
					if (pespese)
					begin
						next_state = SECOND;
					end
					
					else
						next_state <= FIRST;
				end
			
		end
		
		THIRD: begin
			if(stop)
				next_state <= FINAL;

				
			else if(valid ==1'b1)
				begin
					next_state <= FOURTH;
				end
				
			else
				begin
					if (pespese == 1'b1)
					begin
						next_state = SECOND;
					end
					
					else
						next_state <= FIRST;
				end
			
		end
		
		FOURTH: begin
			if(stop)
				next_state <= FINAL;


			else if(valid )
				begin
					next_state <= FINAL;
				end
				
			else
				begin
					if (pespese)
					begin
						next_state = SECOND;
					end
					
					else
						next_state <= FIRST;
				end
			
		end
		
		FINAL: begin
			if(stop)
				next_state <= FINAL;
			else begin
				if(reset)
					next_state <= INIT;
				else
					next_state <= FINAL;
			end
		end
		
		
	endcase
end

//Outputs
always @ (*) begin
	which_part			= 3'd0;
	find					= 1'b0;

	case (current_state)
		
		INIT: begin
			end
			
		FIRST: begin
			which_part = 3'd1;
		end
		
		SECOND: begin
			which_part = 3'd2;
		end
		
		THIRD: begin
			which_part = 3'd3;
		end
		
		FOURTH: begin
			which_part = 3'd4;
		end
		
		FINAL: begin
			find = 1'b1;
		end
		
	endcase
end
	
endmodule
