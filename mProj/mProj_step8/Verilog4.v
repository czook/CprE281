module mux(b, p, s, r);
	input b, p, s;
	output r;
	
	assign r = s ? b : p;
endmodule
