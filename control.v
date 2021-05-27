
module control  (input [24:0] significand1, input [24:0] significand2, input [7:0] exponent_diff, output reg sel);
	
reg [23:0] significand_diff;



always @(*) begin 
	if(exponent_diff != 0) begin
		sel = exponent_diff[7];
	end

	else  begin
		significand_diff = significand1 - significand2;
		sel = significand_diff[23];
	end
		
end

endmodule