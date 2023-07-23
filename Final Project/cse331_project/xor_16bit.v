module xor_16bit(input [15:0] input1, input [15:0] input2, output [15:0] s);

xor xor1(s[0], input1[0], input2[0]);
xor xor2(s[1], input1[1], input2[1]);
xor xor3(s[2], input1[2], input2[2]);
xor xor4(s[3], input1[3], input2[3]);
xor xor5(s[4], input1[4], input2[4]);
xor xor6(s[5], input1[5], input2[5]);
xor xor7(s[6], input1[6], input2[6]);
xor xor8(s[7], input1[7], input2[7]);
xor xor9(s[8], input1[8], input2[8]);
xor xor10(s[9], input1[9], input2[9]);
xor xor11(s[10], input1[10], input2[10]);
xor xor12(s[11], input1[11], input2[11]);
xor xor13(s[12], input1[12], input2[12]);
xor xor14(s[13], input1[13], input2[13]);
xor xor15(s[14], input1[14], input2[14]);
xor xor16(s[15], input1[15], input2[15]);


endmodule
