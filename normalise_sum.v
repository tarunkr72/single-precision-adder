
module normalise_sum (input [24:0] significand, input [7:0] exponent, input op, output reg [24:0] significand_out, output reg [7:0] exponent_out);



always @(*) begin

	

	if(op == 0) begin					// In addition, if the sum exceeds a single bit before the decimal, frac [24] will become 1
		if(significand[24] == 1) 
			begin
			significand_out = significand >> 1;
			exponent_out = exponent + 1;
		        end
		else 
			begin
			significand_out = significand;
			exponent_out = exponent;
			end 
	end

	else begin
		
		
		 if (significand[22] == 1'b1) begin
			exponent_out = exponent - 1;
			significand_out = significand << 1;
		end
		else if (significand[21] == 1'b1) begin
			exponent_out = exponent - 2;
			significand_out = significand << 2;
		end
		else if (significand[20] == 1'b1) begin
			exponent_out = exponent - 3;
			significand_out = significand << 3;
		end

		else if (significand[19] == 1'b1) begin
			exponent_out = exponent - 4;
			significand_out = significand << 4;
		end
		else if (significand[18] == 1'b1) begin
			exponent_out = exponent - 5;
			significand_out = significand << 5;
		end
		else if (significand[17] == 1'b1) begin
			exponent_out = exponent - 6;
			significand_out = significand << 6;
		end

		else if (significand[16] == 1'b1) begin
			exponent_out = exponent - 7;
			significand_out = significand << 7;
		end
		else if (significand[15] == 1'b1) begin
			exponent_out = exponent - 8;
			significand_out = significand << 8;
		end
		else if (significand[14] == 1'b1) begin
			exponent_out = exponent - 9;
			significand_out = significand << 9;
		end
		else if (significand[13] == 1'b1) begin
			exponent_out = exponent - 10;
			significand_out = significand << 10;
		end
		else if (significand[12] == 1'b1) begin
			exponent_out = exponent - 11;
			significand_out = significand << 11;
		end
		else if (significand[11] == 1'b1) begin
			exponent_out = exponent - 12;
			significand_out = significand << 12;
		end
		else if (significand[10] == 1'b1) begin
			exponent_out = exponent - 13;
			significand_out = significand << 13;
		end
		else if (significand[9] == 1'b1) begin
			exponent_out = exponent - 14;
			significand_out = significand << 14;
		end
		else if (significand[8] == 1'b1) begin
			exponent_out = exponent - 15;
			significand_out = significand << 15;
		end
		else if (significand[7] == 1'b1) begin
			exponent_out = exponent - 16;
			significand_out = significand << 16;
		end
		else if (significand[6] == 1'b1) begin
			exponent_out = exponent - 17;
			significand_out = significand << 17;
		end
		else if (significand[5] == 1'b1) begin
			exponent_out = exponent - 18;
			significand_out = significand << 18;
		end
		else if (significand[4] == 1'b1) begin
			exponent_out = exponent - 19;
			significand_out = significand << 19;
		end
		else if (significand[3] == 1'b1) begin
			exponent_out = exponent - 20;
			significand_out = significand << 20;
		end
		else if (significand[2] == 1'b1) begin
			exponent_out = exponent - 21;
			significand_out = significand << 21;

		end
		else if (significand[1] == 1'b1) begin
			exponent_out = exponent - 22;
			significand_out = significand << 22;
		end
		else   begin
			exponent_out = exponent - 23;
			significand_out = significand << 23;
		end
		
  
	end

end

endmodule