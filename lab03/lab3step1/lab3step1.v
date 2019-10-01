module lab3step1(A, C, G, W);
	input C, G, W;
	output A;
	
	not(X, C); // store C' as X
	not(Y, G); // store G' as Y
	not(z, W); // store W' as Z
	
	or(O, X, G, Z); // First OR stored as O
	or(P, C, Y, W); // Second OR stored as P
	
	and(A, O, P); // AND the two
	
endmodule
