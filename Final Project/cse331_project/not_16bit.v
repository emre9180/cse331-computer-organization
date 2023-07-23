module not_16bit(input [15:0] input1, output [15:0] result);

not not1(result[0], input1[0]);
not not2(result[1], input1[1]);
not not3(result[2], input1[2]);
not not4(result[3], input1[3]);
not not5(result[4], input1[4]);
not not6(result[5], input1[5]);
not not7(result[6], input1[6]);
not not8(result[7], input1[7]);
not not9(result[8], input1[8]);
not not10(result[9], input1[9]);
not not11(result[10], input1[10]);
not not12(result[11], input1[11]);
not not13(result[12], input1[12]);
not not14(result[13], input1[13]);
not not15(result[14], input1[14]);
not not16(result[15], input1[15]);

endmodule