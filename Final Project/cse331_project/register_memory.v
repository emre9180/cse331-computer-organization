module register_memory(
	input [3:0] read_register1,read_register2,write_register,
	input [15:0] write_data,
	input regWrite,
	output reg[15:0] read_data1,read_data2,
	input clock
);

reg [15:0] registers [0:15];

always @(*)begin
	read_data1 = registers[read_register1];
	read_data2 = registers[read_register2];
end

always @(posedge clock) begin
	if(regWrite) begin
		registers[write_register] <= write_data;
		$display("Before instruction the target register content: %16b",registers[write_register]);
	end
end


endmodule