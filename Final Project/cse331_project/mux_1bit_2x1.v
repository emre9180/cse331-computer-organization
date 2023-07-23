module mux_1bit_2x1(input in1, in2, s, output out);

/*wire negative, w1, w2;
not n1(negative, s);

and and1(w1, in2, s);
and and2(w2, negative, in1);
or or1(out, w1, w2);

endmodule

module mux2x1(in1, in2, select, out);*/

    assign out = (s == 0) ? in1 : in2;
endmodule
