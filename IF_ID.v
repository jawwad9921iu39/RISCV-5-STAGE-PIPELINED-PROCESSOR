
module IF_ID(clk, rst, stall, flush, instr_in, pc_in, instr_out, pc_out);
input clk, rst, flush, stall;
input [31:0] instr_in, pc_in;
output reg [31:0] instr_out, pc_out;


always@(posedge clk or posedge rst)
begin

if(rst || flush) begin
	pc_out <= 0; 
	instr_out <= 0;
end

else if(!stall) begin
	pc_out <= pc_in;
	instr_out <= instr_in;
end

end
endmodule