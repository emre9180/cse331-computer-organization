module adder_32bit(input [31:0] A, input [31:0] B, input Cin, output [31:0] S, output Cout);

wire[3:0] firstCarry;

adder_16bit adder1(A[15:0], B[15:0], Cin, S[15:0], firstCarry[0]);
adder_16bit adder2(A[31:16], B[31:16], firstCarry[0], S[31:16], Cout);


endmodule