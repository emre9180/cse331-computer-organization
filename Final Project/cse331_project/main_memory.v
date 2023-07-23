module main_memory(
	input [15:0] address,
	input [15:0] writeData,
	output reg [15:0]	readData,
	input mem_read,
	input mem_write,
	input clock	
);

reg [15:0]memdata [0:255];
always @(posedge clock) begin
	if (mem_read) begin
		readData <=memdata[address];
	end
	
	if (mem_write) begin
		memdata[address] <= writeData[15:0];
	end
	
	$display("Before instruction, target memory content: %16b",memdata[address]);

end



endmodule