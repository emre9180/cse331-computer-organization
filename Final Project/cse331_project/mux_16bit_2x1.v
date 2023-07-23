module mux_16bit_2x1(input [15:0]in1, input [15:0]in2, input s, output[15:0] out);

mux_1bit_2x1 mux1(in1[0], in2[0], s, out[0]);
mux_1bit_2x1 mux2(in1[1], in2[1], s, out[1]);
mux_1bit_2x1 mux3(in1[2], in2[2], s, out[2]);
mux_1bit_2x1 mux4(in1[3], in2[3], s, out[3]);
mux_1bit_2x1 mux5(in1[4], in2[4], s, out[4]);
mux_1bit_2x1 mux6(in1[5], in2[5], s, out[5]);
mux_1bit_2x1 mux7(in1[6], in2[6], s, out[6]);
mux_1bit_2x1 mux8(in1[7], in2[7], s, out[7]);
mux_1bit_2x1 mux9(in1[8], in2[8], s, out[8]);
mux_1bit_2x1 mux10(in1[9], in2[9], s, out[9]);
mux_1bit_2x1 mux11(in1[10], in2[10], s, out[10]);
mux_1bit_2x1 mux12(in1[11], in2[11], s, out[11]);
mux_1bit_2x1 mux13(in1[12], in2[12], s, out[12]);
mux_1bit_2x1 mux14(in1[13], in2[13], s, out[13]);
mux_1bit_2x1 mux15(in1[14], in2[14], s, out[14]);
mux_1bit_2x1 mux16(in1[15], in2[15], s, out[15]);

endmodule