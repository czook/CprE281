module Decoder3to8(x0, x1, x2, w0, w1, w2, w3, w4, w5, w6, w7, en);
	input x0, x1, x2, en;
	output reg w0, w1, w2, w3, w4, w5, w6, w7;
	
	always @(x0 or x1 or x2)
	begin
		case ({en, x0, x1, x2})
			4'b0000: {w0, w1, w2, w3, w4, w5, w6, w7} = 8'b00000000;
			4'b0001: {w0, w1, w2, w3, w4, w5, w6, w7} = 8'b00000000;
			4'b0010: {w0, w1, w2, w3, w4, w5, w6, w7} = 8'b00000000;
			4'b0011: {w0, w1, w2, w3, w4, w5, w6, w7} = 8'b00000000;
			4'b0100: {w0, w1, w2, w3, w4, w5, w6, w7} = 8'b00000000;
			4'b0101: {w0, w1, w2, w3, w4, w5, w6, w7} = 8'b00000000;
			4'b0110: {w0, w1, w2, w3, w4, w5, w6, w7} = 8'b00000000;
			4'b0111: {w0, w1, w2, w3, w4, w5, w6, w7} = 8'b00000000;
			4'b1000: {w0, w1, w2, w3, w4, w5, w6, w7} = 8'b10000000;
			4'b1001: {w0, w1, w2, w3, w4, w5, w6, w7} = 8'b01000000;
			4'b1010: {w0, w1, w2, w3, w4, w5, w6, w7} = 8'b00100000;
			4'b1011: {w0, w1, w2, w3, w4, w5, w6, w7} = 8'b00010000;
			4'b1100: {w0, w1, w2, w3, w4, w5, w6, w7} = 8'b00001000;
			4'b1101: {w0, w1, w2, w3, w4, w5, w6, w7} = 8'b00000100;
			4'b1110: {w0, w1, w2, w3, w4, w5, w6, w7} = 8'b00000010;
			4'b1111: {w0, w1, w2, w3, w4, w5, w6, w7} = 8'b00000001;
		endcase
	end
endmodule