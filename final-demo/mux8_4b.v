module mux8_4b(S, W0, W1, W2, W3, W4, W5, W6, W7, F);
	input[2:0] S;
	input [3:0] W0, W1, W2, W3, W4, W5, W6, W7;
	
	output [3:0] F;
	
	wire [3:0] mux1, mux2, mux3, mux4, mux5, mux6;
	
	assign mux1= S[0]?W1:W0;
	assign mux2 = S[0]?W3:W2;
	assign mux3 = S[0]?W5:W4;
	assign mux4 = S[0]?W7:W6;
	assign mux5 = S[1]?mux2:mux1;
	assign mux6 = S[1]?mux4:mux3;
	assign F = S[2]?mux6:mux5;
	
endmodule