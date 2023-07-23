module or_6bit(input [5:0] input1, input [5:0] input2, output [5:0] s);

or or1(s[0], input1[0], input2[0]);
or or2(s[1], input1[1], input2[1]);
or or3(s[2], input1[2], input2[2]);
or or4(s[3], input1[3], input2[3]);
or or5(s[4], input1[4], input2[4]);
or or6(s[5], input1[5], input2[5]);



endmodule
