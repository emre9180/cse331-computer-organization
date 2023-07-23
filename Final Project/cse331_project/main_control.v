module main_control(
input [5:0] op_code,
input [5:0] func,
output reg nPC_sel,
output reg RegWr,
output reg RegDst,
output reg ALUSrc,
output reg [2:0] ALUCtr,
output reg MemWr,
output reg MemRd,
output reg MemtoReg,
output reg branch_equal,
output reg branch_not,
output reg jump
);

always @(*)  
 begin  

      case(op_code)   
      6'b000000: 
		begin // R TYPE  
					nPC_sel = 1'b0;
					RegWr = 1'b1;
					RegDst = 1'b1;
					ALUSrc = 1'b0; 
					MemWr = 1'b0;
					MemRd = 1'b0;
					MemtoReg = 1'b0;
					branch_equal = 1'b0;
					branch_not = 1'b0;
					jump = 1'b0;
					 
					if(func == 6'b100000)// add
					begin
						ALUCtr = 3'b000;
					end
					
					else if (func == 6'b011000) // or
					begin
						ALUCtr = 3'b101;
					end
					
					else if (func == 6'b101010) // set less than
					begin
						ALUCtr = 3'b110;
					end
					
					else if (func == 6'b100010) // subtract
					begin
						ALUCtr = 3'b001;
					end
					
					else if (func == 6'b100100	) // and
					begin
						ALUCtr = 3'b100;
					end
					
					else if (func == 6'b001000	) // jr
					begin
						ALUCtr = 3'b000;
						jump = 1'b1;
					end
					
					else if (func == 6'b000000	) // shift lef logical
					begin
						ALUCtr = 3'b011;
					end
					
					else if (func == 6'b000010		) // shift lef logical
					begin
						ALUCtr = 3'b111;
					end	
      end
		
		
      6'b001100: begin // and immediate  
               nPC_sel = 1'b0;
					RegWr = 1'b1;
					RegDst = 1'b0;
					ALUSrc = 1'b1; 
					MemWr = 1'b0;
					MemRd = 1'b0;
					MemtoReg = 1'b0;
					ALUCtr = 3'b100;
					branch_equal = 1'b0;
					branch_not = 1'b0;
					jump = 1'b0;
					
                end  
      6'b001101: begin // or immediate
               nPC_sel = 1'b0;
					RegWr = 1'b1;
					RegDst = 1'b0;
					ALUSrc = 1'b1; 
					MemWr = 1'b0;
					MemRd = 1'b0;
					MemtoReg = 1'b0;
					ALUCtr = 3'b101;
					branch_equal = 1'b0;
					branch_not = 1'b0;
					jump = 1'b0;
					
                end  
      6'b001000: begin // add immediate
               nPC_sel = 1'b0;
					RegWr = 1'b1;
					RegDst = 1'b0;
					ALUSrc = 1'b1; 
					MemWr = 1'b0;
					MemRd = 1'b0;
					MemtoReg = 1'b0;
					ALUCtr = 3'b000;
					branch_equal = 1'b0;
					branch_not = 1'b0;
					jump = 1'b0;
					
                end  
      6'b100011: begin // load word  
               nPC_sel = 1'b0;
					RegWr = 1'b1;
					RegDst = 1'b0;
					ALUSrc = 1'b1; 
					MemWr = 1'b0;
					MemRd = 1'b1;
					MemtoReg = 1'b1;
					ALUCtr = 3'b000;
					branch_equal = 1'b0;
					branch_not = 1'b0;
					jump = 1'b0;
					
                end  
      6'b101011: begin // store word
               nPC_sel = 1'b0;
					RegWr = 1'b0;
					RegDst = 1'b0;
					ALUSrc = 1'b1; 
					MemWr = 1'b1;
					MemRd = 1'b1;
					MemtoReg = 1'b0;
					ALUCtr = 3'b000;
					branch_equal = 1'b0;
					branch_not = 1'b0;
					jump = 1'b0;
                end  
      6'b001010: begin // set less than immediate
               nPC_sel = 1'b0;
					RegWr = 1'b1;
					RegDst = 1'b1;
					ALUSrc = 1'b1; 
					MemWr = 1'b0;
					MemRd = 1'b0;
					MemtoReg = 1'b0;
					ALUCtr = 3'b000;
					branch_equal = 1'b0;
					branch_not = 1'b0;
					jump = 1'b0;
                end  
      6'b000100: begin // 000100 branc equal  
               nPC_sel = 1'b1;
					RegWr = 1'b0;
					RegDst = 1'b0;
					ALUSrc = 1'b0; 
					MemWr = 1'b0;
					MemRd = 1'b0;
					MemtoReg = 1'b0;
					ALUCtr = 3'b000;
					branch_equal = 1'b1;
					branch_not = 1'b0;
                end 
					 
		6'b000101: begin // 000101	 bne
               nPC_sel = 1'b1;
					RegWr = 1'b0;
					RegDst = 1'b0;
					ALUSrc = 1'b0; 
					MemWr = 1'b0;
					MemRd = 1'b0;
					MemtoReg = 1'b0;
					ALUCtr = 3'b000;
					branch_equal = 1'b0;
					branch_not = 1'b1;
					jump = 1'b0;
                end
		6'b000001: begin // li
               nPC_sel = 1'b0;
					RegWr = 1'b1;
					RegDst = 1'b0;
					ALUSrc = 1'b1; 
					MemWr = 1'b0;
					MemRd = 1'b0;
					MemtoReg = 1'b0;
					ALUCtr = 3'b000;
					branch_equal = 1'b0;
					branch_not = 1'b0;
					jump = 1'b0;
                end
					 
		6'b000010: begin // j
               nPC_sel = 1'b1;
					RegWr = 1'b0;
					RegDst = 1'b0;
					ALUSrc = 1'b0; 
					MemWr = 1'b0;
					MemRd = 1'b0;
					MemtoReg = 1'b0;
					ALUCtr = 3'b000;
					branch_equal = 1'b0;
					branch_not = 1'b0;
					jump = 1'b1;
                end
					 
		6'b000011: begin // jal
               nPC_sel = 1'b1;
					RegWr = 1'b0;
					RegDst = 1'b0;
					ALUSrc = 1'b0; 
					MemWr = 1'b0;
					MemRd = 1'b0;
					MemtoReg = 1'b0;
					ALUCtr = 3'b000;
					branch_equal = 1'b0;
					branch_not = 1'b0;
					jump = 1'b1;
                end

					 
		
      default: begin  
                nPC_sel = 1'b1;
					RegWr = 1'b1;
					RegDst = 1'b0;
					ALUSrc = 1'b1; 
					MemWr = 1'b0;
					MemRd = 1'b0;
					MemtoReg = 1'b0;
					ALUCtr = 3'b000;
                end  
      endcase  
      end  
   
 endmodule  