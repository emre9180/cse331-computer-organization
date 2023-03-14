module adder_16bit(input [15:0] A, input [15:0] B, input Cin, output [15:0] S, output Cout);

wire[3:0] firstCarry;

adder_4bit adder1(A[3:0], B[3:0], Cin, S[3:0], firstCarry[0]);
adder_4bit adder2(A[7:4], B[7:4], firstCarry[0], S[7:4], firstCarry[1]);
adder_4bit adder3(A[11:8], B[11:8], firstCarry[1], S[11:8], firstCarry[2]);
adder_4bit adder4(A[15:12], B[15:12], firstCarry[2], S[15:12], Cout);

endmodule