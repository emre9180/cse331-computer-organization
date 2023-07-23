module multiplier(input [15:0] multiplier, input [15:0] multiplicand, input clk, output [63:0] out);


//wire add, shft, write;

reg [63:0] productReg;

reg stop = 1'b0;
wire [63:0] shifter;
reg start = 1'b1;






wire p0;

always@(negedge clk)
begin
start = 1'b0;
end

controller ctrl1(reset, clk, p0, write, shft, add);
or_16bit or1(shifter[15:1], 15'b0, out);
datapath dp(multiplier, multiplicand, clk, start, shft, add, write, p0, shifter);

// product reg güncelledim.

// module datapath(input product[31:0], multiplicand[15:0], shft, write, add, output p0, newproduct[31:0]);
endmodule
