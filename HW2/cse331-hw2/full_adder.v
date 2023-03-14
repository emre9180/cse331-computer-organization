module full_adder(input A, B, Cin, output s, Cout);

wire w1;
wire w2;
wire w3;

xor xor1(w1, A, B);
xor xor2(s, Cin, w1);
and and1(w2, Cin, w1);
and and2(w3, A, B);
or or1(Cout, w2, w3);

endmodule