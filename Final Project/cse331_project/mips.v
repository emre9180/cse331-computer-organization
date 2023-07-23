module mips(
	input clock,
	input [31:0] pc,
	input [31:0] instruction,
	output [31:0] newPc
);

wire cout;

/**/
wire [5:0] opcode;
wire [3:0] rs_addr;
wire [3:0] rt_addr;
wire [3:0] rd_addr;
wire [15:0] rs;
wire [15:0] rt;
wire [15:0] rd;
wire [3:0] shamt;
wire [5:0] func;

wire [9:0] addr;
wire [15:0] imm;



wire [3:0] targetRegAddr;

wire [15:0] reg_write_data;


wire [15:0] alu2ndinput;
wire [15:0] aluOutput;

wire zero;



wire [15:0] memOutput;

wire [31:0] branchAddr;
wire [31:0] plus4pc;
wire[31:0] pc_Output;
wire[31:0] jumpAddr;

/**/

 

/**/

wire nPC_sel;
wire RegWr;
wire RegDst;
wire ALUSrc;
wire [2:0] ALUCtr;
wire MemWr;
wire MemRd;
wire MemtoReg;
wire branch;
wire branch_not;

// -------------------------------------------------------- // 

// R type fields
or_6bit or1(instruction[31:26], 6'b000000, opcode); // al op code'u
or_4bit or2(instruction[25:22], 4'b0000, rs_addr);
or_4bit or3(instruction[21:18], 4'b0000, rt_addr);
or_4bit or4(instruction[17:14], 4'b0000, rd_addr);
or_4bit or5(instruction[13:10], 4'b0000, shamt);
or_6bit or6(instruction[9:4], 6'b000000, func);

// I type fields
or_16bit or7(instruction[17:2], 16'd0, imm);

// J type
or_10bit or8(instruction[25:16], 10'd0, addr);

or_16bit or9(16'd0, 16'd0, branchAddr[31:16]);
or_16bit or10(16'd0, imm, branchAddr[15:0]);

or_22bit or11(22'd0, 22'd0, jumpAddr[31:10]);
or_10bit or12(10'd0, addr, jumpAddr[9:0]);

// -------------------------------------------------------- // 

main_control c11(opcode, func, nPC_sel, RegWr, RegDst, ALUSrc, ALUCtr, MemWr, MemRd, MemtoReg, branch, branch_not, jump);
mux_3bit_2x1 mux1(rt_addr, rd_addr,RegDst,targetRegAddr);
main_memory mem1(aluOutput,rt,memOutput,MemRd,MemWr, clock);

register_memory reg1(rs_addr,rt_addr, targetRegAddr ,reg_write_data,RegWr,rs,rt,clock);
mux_16bit_2x1 mux2(rt,imm,ALUSrc,alu2ndinput);
alu alu1(rs, alu2ndinput, clk, ALUCtr, aluOutput, zero, shamt);

mux_16bit_2x1 c7(aluOutput,memOutput,MemtoReg, reg_write_data);

/**/
wire zero_not;
not not1(zero_not, zero);

wire beq_w;
wire bne_w;
wire branch_w;

and a1(beq_w,zero,branch);
and a2(bne_w,zero_not,branch_not);
or o1(branch_w,beq_w,bne_w);
/**/


wire [31:0] branchAddrT;
wire [31:0] branchAddrT2;
wire [31:0] branchAddrT3;

adder_32bit add1(pc, 32'd1, 1'b0 , plus4pc, cout);

adder_32bit add2(plus4pc, branchAddr, 1'b0, branchAddrT, cout);
mux_32bit_2x1 mx2(plus4pc, branchAddrT, branch_w, branchAddrT2);
mux_32bit_2x1 mx3(branchAddrT2, jumpAddr, jump, branchAddrT3); 

mux_32bit_2x1 mx1(plus4pc, branchAddrT3, nPC_sel, pc_Output);

assign newPc = pc_Output;


wire [15:0] rsgrb;
wire [15:0] rtgrb;
register_memory register2(rs_addr,rt_addr,targetRegAddr ,reg_write_data,RegWr,rsgrb,rtgrb,clock);


/**/









endmodule
