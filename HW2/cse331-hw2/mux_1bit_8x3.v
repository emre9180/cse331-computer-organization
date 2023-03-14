module mux_1bit_8x3(input in0, in1, in2, in3, in4, in5, in6, in7, S0, S1, S2, output out);

wire w1, w2, w3, w4, w5, w6 ,w7 ,w8, w9, w10, w11;

not not1(w1, S0);
not not2(w2, S1);
not not3(w3, S2);
and not4(w4, in0, w1, w2, w3), (w5, in1, S0, w2, w3);
and not5(w6, in2, w1, S1, w3), (w7, in3, S0, S1, w3);
and not6(w8, in4, w1, w2, S2), (w9, in5, S0, w2, S2);
and not7(w10, in6, w1, S1, S2), (w11, in7, S0, S1, S2);
or or1(out, w4, w5, w6, w7, w8, w9, w10, w11);
endmodule

/*
module m81(input D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2, output out);
wire T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11;
not(T1, S0);
not(T2, S1);
not(T3, S2);
and(T4, D0, T1, T2, T3), (T5, D1, S0, T2, T3);
and(T6, D2, T1, S1, T3), (T7, D3, S0, S1, T3);
and(T8, D4, T1, T2, S2), (T9, D5, S0, T2, S2);
and(T10, D6, T1, S1, S2), (T11, D7, S0, S1, S2);
or(out, T4, T5, T6, T7, T8, T9, T10, T11);
endmodule*/