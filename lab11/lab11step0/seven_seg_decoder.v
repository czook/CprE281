module seven_seg_decoder(a,b,c,d,e,f,g,w,x,y,z);
	input z,y,w,x;
	output	a,b,c,d,e,f,g;
	reg [3:0] in;
	reg [7:0] out;
	//`define out {a,b,c,d,e,f,g};
	always @(z or  y or x or w)
		begin
			 in[0] = z;
			 in[1] = y;
			 in[2] = x;
			 in[3] = w;
			
			case(in)
				4'b0000: out='b0000001;
				4'b0001: out='b1001111;
				4'b0010: out='b0010010;
				4'b0011: out='b0000110;
				4'b0100: out='b1001100;
				4'b0101: out='b0100100;
				4'b0110: out='b0100000;
				4'b0111: out='b0001111;
				4'b1000: out='b0000000;
				4'b1001: out='b0000100;
				4'b1010: out='b0001000;
				4'b1011: out='b1100000;
				4'b1100: out='b0110001;
				4'b1101: out='b1000010;
				4'b1110: out='b0110000;
				4'b1111: out='b0111000;
			endcase
		end
		/*
	 a = (out[6]);
	 b = out[5];
	 c = out[4];
	 d = out[3];
	 e = out[2];
	 f = out[1];
	 g = out[0];
	 */
	 assign {a,b,c,d,e,f,g} = out[7:0];
endmodule	