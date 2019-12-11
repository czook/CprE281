module mProj_step7(w, x, y, z, p);
	input w, x, y, z;
	output p;
	
	assign p = (x & ~y & z) | (z & ~w & x) | (y & ~w & ~x) | (~x & y & z);

endmodule
