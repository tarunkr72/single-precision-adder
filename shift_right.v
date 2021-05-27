module shift_right (
	input [24:0] significand, 
	input [7:0] value, 
	output [24:0] shitft);


	assign shitft = significand >> value;
endmodule
