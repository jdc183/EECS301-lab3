module regq(clk,c1,c2, ia, q);
input	clk,c1,c2;
input   [3:0]  ia;
output	[3:0]	q;
reg	[3:0]	q;



	parameter	Hold=2'b00, Load=2'b01, Shift=2'b10;
	
	always @( posedge clk)
	begin

		case({c1,c2})
		Load: q=ia;
		Shift: q={q[3],q}>>1;
		Hold: ;
		endcase
	end

endmodule
