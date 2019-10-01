module lab3step2(A, C, G, W);
	input C, G, W;
	output A;
	
	assign A = ((C&~W)|(~C&~G)|(G&W));

endmodule
	