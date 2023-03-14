module adder_4bit(input [3:0] A, input [3:0] B, input Cin, output [3:0] S, output Cout);

wire[3:0] carryWire;

full_adder full1(A[0], B[0], Cin, S[0], carryWire[0]);
full_adder full2(A[1], B[1], carryWire[0], S[1], carryWire[1]);
full_adder full3(A[2], B[2], carryWire[1], S[2], carryWire[2]);
full_adder full4(A[3], B[3], carryWire[2], S[3], Cout);

endmodule