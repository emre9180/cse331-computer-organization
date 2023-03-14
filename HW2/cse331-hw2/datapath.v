module datapath(input [31:0] multiplier, input [31:0] multiplicand , input clk, input start, input shft, input add, input write, output reg p0, 
					output reg [63:0] product);
wire [31:0] adderResult;
	
	wire [63:0] result0; // ana sonuc
wire [63:0] result1; // sol tarafı sende tutuyorum
wire [63:0] result2;
wire [63:0] starticin;
wire [31:0] addOutput; // multiplicand + multipler
wire [63:0] writeTarget; // muxtan gelen ya toplanmış (mmultilppier + muliplicand) ya da productıın direkt sol tarafıdır
wire [63:0] productOutput;


wire A = 1'b0;
wire B;


mux_32bit_2x1 mux22(product[31:0], multiplier, start, starticin[31:0]);

adder_32bit adder1(product[63:32], multiplicand, A, addOutput, B); // multiplicand ile product toplar addoutputa bağlar
mux_32bit_2x1 mux0(product[63:32], addOutput, write , writeTarget[63:32]); // add sinyaline göre toplanmış hali veya ilk hali seçer, writegargetin sol tarafa yapştırır.


mux_32bit_2x1 mux1(product[63:32], writeTarget[63:32], write, result1[63:32]); // write sinyaline göre result1 'İn sol tarafı ayarlıyor. sol tarafını da result2den alcaz.
adder_32bit adder2(32'd0, product[31:0], A, result2[31:0], B); // result 2 multiplierı tutuo ama sağ tarafı

adder_32bit adder3(32'd0, result2[31:0], A, result0[31:0], B); // add outputun sağ tarafı eşitle producta
adder_32bit adder4(32'd0, result1[63:32], A, result0[63:32], B); // add outputun sağ tarafı eşitle producta

assign shiftedOutput = product >> 1'b1; // shift edlmiş halini wire'a bağla

mux_64bit_2x1 mux2( result0, shiftedOutput, shft, productOutput); // shift sinyali gelirse producti yeni haliyle güncelle.

//mux_64bit_2x1 mux3(productOutput, starticin, start, product);

	always @(posedge clk)
	begin
	if(start)
		product[31:0] = multiplier;
	else 
		begin
			if(write & add)
				product[63:32] <= adderResult;
			if(shft)
				product <= product >> 1; 
		p0 <= product[0];
		end
	end
	
	adder_32bit(multiplicand, product[63:32], 1'b0, adderResult, cout);
	
	
endmodule