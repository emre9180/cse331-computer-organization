module mux_3bit_2x1(input [3:0] in1, input [3:0] in2, input s, output [3:0] out);

mux_1bit_2x1 mux1(in1[0], in2[0], s, out[0]);
mux_1bit_2x1 mux2(in1[1], in2[1], s, out[1]);
mux_1bit_2x1 mux3(in1[2], in2[2], s, out[2]);
mux_1bit_2x1 mux4(in1[3], in2[3], s, out[3]);
endmodule
