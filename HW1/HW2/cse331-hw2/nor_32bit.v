module nor_32bit(input [31:0] input1, input [31:0] input2, output [31:0] s);

nor nor1(s[0], input1[0], input2[0]);
nor nor2(s[1], input1[1], input2[1]);
nor nor3(s[2], input1[2], input2[2]);
nor nor4(s[3], input1[3], input2[3]);
nor nor5(s[4], input1[4], input2[4]);
nor nor6(s[5], input1[5], input2[5]);
nor nor7(s[6], input1[6], input2[6]);
nor nor8(s[7], input1[7], input2[7]);
nor nor9(s[8], input1[8], input2[8]);
nor nor10(s[9], input1[9], input2[9]);
nor nor11(s[10], input1[10], input2[10]);
nor nor12(s[11], input1[11], input2[11]);
nor nor13(s[12], input1[12], input2[12]);
nor nor14(s[13], input1[13], input2[13]);
nor nor15(s[14], input1[14], input2[14]);
nor nor16(s[15], input1[15], input2[15]);
nor nor17(s[16], input1[16], input2[16]);
nor nor18(s[17], input1[17], input2[17]);
nor nor19(s[18], input1[18], input2[18]);
nor nor20(s[19], input1[19], input2[19]);
nor nor21(s[20], input1[20], input2[20]);
nor nor22(s[21], input1[21], input2[21]);
nor nor23(s[22], input1[22], input2[22]);
nor nor24(s[23], input1[23], input2[23]);
nor nor25(s[24], input1[24], input2[24]);
nor nor26(s[25], input1[25], input2[25]);
nor nor27(s[26], input1[26], input2[26]);
nor nor28(s[27], input1[27], input2[27]);
nor nor29(s[28], input1[28], input2[28]);
nor nor30(s[29], input1[29], input2[29]);
nor nor31(s[30], input1[30], input2[30]);
nor nor32(s[31], input1[31], input2[31]);

endmodule
