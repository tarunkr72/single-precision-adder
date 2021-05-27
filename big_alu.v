module big_alu (
	input [24:0] a, 
	input [24:0] b, input op , output reg [24:0] sum);

always @(*) begin
	if(op == 0)
		sum = a + b;
	else if(op == 1)
		sum = a - b;
end
endmodule