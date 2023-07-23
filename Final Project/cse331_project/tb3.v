module tb3();

reg clock;

reg [31:0] pc;
reg [31:0] instructions [31:0];
reg [31:0] instruction;
wire [31:0] newPc;

initial clock = 0;

initial begin
	$readmemb("instructions3.mem", instructions);
	$readmemb("registers.mem", processor.reg1.registers);
	$readmemb("data.txt",  processor.mem1.memdata);
	pc <= 0;
	assign instruction = instructions[pc];
end

mips processor(clock,pc,instruction,newPc);


always begin 
	
		#50 clock=~clock;
		
end

always begin
	if(pc>32'd30)begin
		$stop;
	end
	#200
	pc <= newPc;
	instruction<= instructions[pc];
	$display("Instruction: %32b, Rsaddr: %4b, Rtaddr: %4b, Rdaddr: %4b, ALURes: %16b, $Rs: %16b, $Rt: %32b,PC : %16b, regw:%1b, memtoReg:%1b, mr:%1b, mw:%1b, branch:%1b, aluSrc:%1b, aluop:%5b,opcode:%5b,regdest:%5b,clock :%d",processor.instruction,processor.rs_addr,processor.rt_addr,processor.rd_addr,processor.aluOutput,processor.rs,processor.rt,processor.pc,processor.reg_write_data,processor.MemtoReg,processor.MemRd,processor.MemWr,processor.branch,processor.ALUSrc,processor.ALUCtr,processor.opcode,processor.targetRegAddr,processor.clock);
	$display("RS register content : %16b", processor.reg1.registers[processor.rs_addr]);
	$display("RT register content after instruction is done : %16b", processor.reg1.registers[processor.rt_addr]);
	$display("RD register content after instruction is done : %16b", processor.reg1.registers[processor.rd_addr]);
	$display("Memory content -if there is a load or store op- after instruction is done : %16b", processor.mem1.memdata[processor.reg1.registers[processor.rs_addr] + processor.imm]);
	$display("\n\n");

end

endmodule