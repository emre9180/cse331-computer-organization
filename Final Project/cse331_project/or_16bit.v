module or_16bit(input [15:0] input1, input [15:0] input2, output [15:0] s);

or or1(s[0], input1[0], input2[0]);
or or2(s[1], input1[1], input2[1]);
or or3(s[2], input1[2], input2[2]);
or or4(s[3], input1[3], input2[3]);
or or5(s[4], input1[4], input2[4]);
or or6(s[5], input1[5], input2[5]);
or or7(s[6], input1[6], input2[6]);
or or8(s[7], input1[7], input2[7]);
or or9(s[8], input1[8], input2[8]);
or or10(s[9], input1[9], input2[9]);
or or11(s[10], input1[10], input2[10]);
or or12(s[11], input1[11], input2[11]);
or or13(s[12], input1[12], input2[12]);
or or14(s[13], input1[13], input2[13]);
or or15(s[14], input1[14], input2[14]);
or or16(s[15], input1[15], input2[15]);



endmodule
