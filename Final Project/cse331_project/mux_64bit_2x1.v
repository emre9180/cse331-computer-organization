module mux_64bit_2x1(input [63:0] input1, input [63:0] input2, input s, output [63:0] result);

mux_32bit_2x1 m1(input1[63:32], input2[63:32], s, result[63:32]);
mux_32bit_2x1 m2(input1[31:0], input2[31:0], s, result[31:0]);

endmodule