
module exception_check (input [24:0] significand, input [7:0] exponent, input s, output reg [24:0] significand_out, output reg [7:0] exponent_out);

always @(*) begin
	if (exponent == 255 && significand==0) begin
		significand_out = 24'd0;
		exponent_out = 7'd255;
		
	end

	
	else if (exponent == 255 && significand!=0) begin
		significand_out = 24'h400000;
		exponent_out = 7'd255;
		
	end

	else if (exponent == 0 && significand==0) begin
		significand_out = 24'd0;
		exponent_out = 7'd0;
		
	end
	

	
	else begin
		significand_out = significand;
		exponent_out = exponent;
		
	end
end	

endmodule