module or_4bit(input [3:0] input1, input [3:0] input2, output [3:0] s);

or or1(s[0], input1[0], input2[0]);
or or2(s[1], input1[1], input2[1]);
or or3(s[2], input1[2], input2[2]);
or or4(s[3], input1[3], input2[3]);




endmodule
