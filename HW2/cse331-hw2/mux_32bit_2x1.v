module mux_32bit_2x1(input [31:0] in1, input [31:0] in2, input s, output [31:0] out);

mux_16bit_2x1 m1(in1[31:16], in2[31:16], s, out[31:16]);
mux_16bit_2x1 m2(in1[15:0], in2[15:0], s, out[15:0]);

endmodule
