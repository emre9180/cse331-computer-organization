module mux_16bit_8x3(input [15:0] input1, input [15:0] input2, input [15:0] input3, input [15:0] input4, input [15:0] input5, input [15:0] input6, input [15:0] input7, 
input [15:0] input8, input S0, input S1, input S2, output [15:0] out);

mux_1bit_8x3 mux1(input1[0], input2[0], input3[0], input4[0], input5[0], input6[0], input7[0], input8[0], S0, S1, S2, out[0]);
mux_1bit_8x3 mux2(input1[1], input2[1], input3[1], input4[1], input5[1], input6[1], input7[1], input8[1], S0, S1, S2, out[1]);
mux_1bit_8x3 mux3(input1[2], input2[2], input3[2], input4[2], input5[2], input6[2], input7[2], input8[2], S0, S1, S2, out[2]);
mux_1bit_8x3 mux4(input1[3], input2[3], input3[3], input4[3], input5[3], input6[3], input7[3], input8[3], S0, S1, S2, out[3]);
mux_1bit_8x3 mux5(input1[4], input2[4], input3[4], input4[4], input5[4], input6[4], input7[4], input8[4], S0, S1, S2, out[4]);
mux_1bit_8x3 mux6(input1[5], input2[5], input3[5], input4[5], input5[5], input6[5], input7[5], input8[5], S0, S1, S2, out[5]);
mux_1bit_8x3 mux7(input1[6], input2[6], input3[6], input4[6], input5[6], input6[6], input7[6], input8[6], S0, S1, S2, out[6]);
mux_1bit_8x3 mux8(input1[7], input2[7], input3[7], input4[7], input5[7], input6[7], input7[7], input8[7], S0, S1, S2, out[7]);
mux_1bit_8x3 mux9(input1[8], input2[8], input3[8], input4[8], input5[8], input6[8], input7[8], input8[8], S0, S1, S2, out[8]);
mux_1bit_8x3 mux10(input1[9], input2[9], input3[9], input4[9], input5[9], input6[9], input7[9], input8[9], S0, S1, S2, out[9]);
mux_1bit_8x3 mux11(input1[10], input2[10], input3[10], input4[10], input5[10], input6[10], input7[10], input8[10], S0, S1, S2, out[10]);
mux_1bit_8x3 mux12(input1[11], input2[11], input3[11], input4[11], input5[11], input6[11], input7[11], input8[11], S0, S1, S2, out[11]);
mux_1bit_8x3 mux13(input1[12], input2[12], input3[12], input4[12], input5[12], input6[12], input7[12], input8[12], S0, S1, S2, out[12]);
mux_1bit_8x3 mux14(input1[13], input2[13], input3[13], input4[13], input5[13], input6[13], input7[13], input8[13], S0, S1, S2, out[13]);
mux_1bit_8x3 mux15(input1[14], input2[14], input3[14], input4[14], input5[14], input6[14], input7[14], input8[14], S0, S1, S2, out[14]);
mux_1bit_8x3 mux16(input1[15], input2[15], input3[15], input4[15], input5[15], input6[15], input7[15], input8[15], S0, S1, S2, out[15]);

endmodule